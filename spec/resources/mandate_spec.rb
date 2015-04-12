require 'spec_helper'

describe GoCardless::Resources::Mandate do
  describe "initialising" do
    let(:data) do
      {
      
        
          "created_at" => "created_at-input",
        
      
        
          "id" => "id-input",
        
      
        
        "links" => {
          
            "creditor" => "creditor-input",
          
            "customer_bank_account" => "customer_bank_account-input",
          
        },
        
      
        
          "metadata" => "metadata-input",
        
      
        
          "next_possible_charge_date" => "next_possible_charge_date-input",
        
      
        
          "reference" => "reference-input",
        
      
        
          "scheme" => "scheme-input",
        
      
        
          "status" => "status-input",
        
      
      }
    end

    it "can be initialized from an uneveloped response" do
      resource = described_class.new(data)
      
       
       expect(resource.created_at).to eq("created_at-input")
       
       
       
       expect(resource.id).to eq("id-input")
       
       
       
         
           expect(resource.links.creditor).to eq("creditor-input")
         
           expect(resource.links.customer_bank_account).to eq("customer_bank_account-input")
         
       
       
       
       expect(resource.metadata).to eq("metadata-input")
       
       
       
       expect(resource.next_possible_charge_date).to eq("next_possible_charge_date-input")
       
       
       
       expect(resource.reference).to eq("reference-input")
       
       
       
       expect(resource.scheme).to eq("scheme-input")
       
       
       
       expect(resource.status).to eq("status-input")
       
       
    end
  end
end
