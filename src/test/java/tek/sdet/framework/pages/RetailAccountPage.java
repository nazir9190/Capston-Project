package tek.sdet.framework.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import tek.sdet.framework.base.BaseSetup;

public class RetailAccountPage extends BaseSetup {

	public RetailAccountPage () {
		PageFactory.initElements(getDriver(), this);
		
	}
	@FindBy(xpath="//img[@alt='profile pic']" )
	public WebElement accountProfilePicutre;
	// here we write the findElement of profile picture to validate it that it is present and 
	// then we limit the access to it by using private method  in POM factory 
	
	
	
}
