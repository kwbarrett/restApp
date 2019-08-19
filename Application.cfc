component output="false" {
    this.name = "restApp";
    this.applicationTimeout = createTimespan(0, 2, 0, 0);
    this.datasource = "onboardingform";

    this.restSettings.skipCFCWithError = true;

    public boolean function onRequestStart(){
        if(structKeyExists(url , "refreshRestServices")){
            restInitApplication(getDirectoryFromPath(getCurrentTemplatePath()), this.name)
        }
        return true;
    }
}