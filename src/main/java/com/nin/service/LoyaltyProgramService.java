package com.nin.service;

import com.nin.model.LoyaltyProgram;
import com.nin.repository.LoyaltyProgramRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class LoyaltyProgramService {
    @Autowired
    private LoyaltyProgramRepository loyaltyProgramRepository;

    @Autowired
    public LoyaltyProgramService(LoyaltyProgramRepository loyaltyProgramRepository) {
        this.loyaltyProgramRepository = loyaltyProgramRepository;
    }
    public List<LoyaltyProgram> findLoyaltyProgramByDate(){
        return  loyaltyProgramRepository.findLoyaltyProgramByDate( new Date());
    }

    public LoyaltyProgram finByLoyaltyProgramId(Long Id){
        return loyaltyProgramRepository.findByLoyaltyProgramId(Id);
    }

    public LoyaltyProgram findLoyaltyProgramByIdAndDate(Date date ,Long id){
        return loyaltyProgramRepository.findLoyaltyProgramByIdAndDate(date,id);
    }

}
