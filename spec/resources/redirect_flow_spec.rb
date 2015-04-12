require 'spec_helper'

describe GoCardless::Resources::RedirectFlow do
  describe "initialising" do
    let(:data) do
      {
      
        
          "created_at" => "created_at-input",
        
      
        
          "description" => "description-input",
        
      
        
          "id" => "id-input",
        
      
        
        "links" => {
          
            "creditor" => "creditor-input",
          
        },
        
      
        
          "redirect_url" => "redirect_url-input",
        
      
        
          "scheme" => "scheme-input",
        
      
        
          "session_token" => "session_token-input",
        
      
        
          "success_redirect_url" => "success_redirect_url-input",
        
      
      }
    end

    it "can be initialized from an uneveloped response" do
      resource = described_class.new(data)
      
       
       expect(resource.created_at).to eq("created_at-input")
       
       
       
       expect(resource.description).to eq("description-input")
       
       
       
       expect(resource.id).to eq("id-input")
       
       
       
         
           expect(resource.links.creditor).to eq("creditor-input")
         
       
       
       
       expect(resource.redirect_url).to eq("redirect_url-input")
       
       
       
       expect(resource.scheme).to eq("scheme-input")
       
       
       
       expect(resource.session_token).to eq("session_token-input")
       
       
       
       expect(resource.success_redirect_url).to eq("success_redirect_url-input")
       
       
    end
  end
end
