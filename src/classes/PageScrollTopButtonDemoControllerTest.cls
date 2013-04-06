/*
 * JQueryScrollTopDemo
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdDate      : 2013/01/01
 * @createdName      : TAIKI,YOSHIKAWA
 * ----------------------------------------
 * @lastModifiedDate : 2013/01/01
 * @lastModifiedName : TAIKI,YOSHIKAWA
 * ----------------------------------------
 */
@isTest
private class PageScrollTopButtonDemoControllerTest {

    /*
	 * コンストラクタ・テスト
	 */
    static testMethod void PageScrollTopButtonDemoControllerTest() {
        System.debug('◆◆◆◆PageScrollTopButtonDemoControllerTest:START');
        
        // ユーザ
        User user = getUser();
        
        // テスト実施
        System.RunAs(user) {
            
            // カレントページにパラメータを設定
	        PageReference pageRef = getPageReference();
	        Test.setCurrentPage(pageRef);
	        
            // テスト開始
            Test.startTest();
            
            // コンストラクタ
            PageScrollTopButtonDemoController cls = new PageScrollTopButtonDemoController();
            
            // テスト終了
            Test.stopTest();
        }
        
        System.debug('◆◆◆◆PageScrollTopButtonDemoControllerTest:END');
    }
    
    /*
     * ユーザ取得
     */
    private static User getUser() {
    	return [select Id from User where Id =: UserInfo.getUserId() limit 1];
    }
    
    /*
     * テストページ取得
     */
    private static PageReference getPageReference() {
    	return new PageReference('TestPage');
    }
}