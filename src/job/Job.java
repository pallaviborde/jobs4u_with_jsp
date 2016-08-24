package job;

/**
 * <p>Title: </p>
 * <p>Description: Job type</p>
 * @author Linkedus.org
 */

public class Job {

    private int jobID;
    private String recEmail;
    private String jobTitle;
    private String companyName;
    private String companyWebsite;
    private String location;
    private String jobDescription;
    private String desiredSkills;
    private String industry;
    private String employmentType;
    private String experienceLevel;
    private String jobFunction;
    private String education;
    private String postTime;
    private String jobLink;
    
    public Job() {
    	
    }

    public int getJobID() {
        return jobID;
    }

    public void setJobID(int jobID) {
        this.jobID = jobID;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getCompanyWebsite() {
        return companyWebsite;
    }

    public void setCompanyNameWebsite(String companyWebsite) {
        this.companyWebsite = companyWebsite;
    }
    
    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getJobDescription() {
        return jobDescription;
    }

    public void setJobDescription(String jobDescription) {
        this.jobDescription = jobDescription;
    }
    
    public String getDesiredSkills() {
        return desiredSkills;
    }

    public void setDesiredSkills(String desiredSkills) {
        this.desiredSkills = desiredSkills;
    }
    
    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }
    
    public String getEmploymentType() {
        return employmentType;
    }

    public void setEmploymentType(String employmentType) {
        this.employmentType = employmentType;
    }
    
    public String getExperienceLevel() {
        return experienceLevel;
    }

    public void setExperienceLevel(String experienceLevel) {
        this.experienceLevel = experienceLevel;
    }
    
    public String getJobFunction() {
        return jobFunction;
    }

    public void setJobFunction(String jobFunction) {
        this.jobFunction = jobFunction;
    }
    
    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

	public String getRecEmail() {
		return recEmail;
	}

	public void setRecEmail(String recEmail) {
		this.recEmail = recEmail;
	}

	public String getPostTime() {
		return postTime;
	}

	public void setPostTime(String postTime) {
		this.postTime = postTime;
	}

	public void setCompanyWebsite(String companyWebsite) {
		this.companyWebsite = companyWebsite;
	}

	public String getJobLink() {
		return jobLink;
	}

	public void setJobLink(String jobLink) {
		this.jobLink = jobLink;
	}
    
}