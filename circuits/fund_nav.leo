### **circuits/fund_nav.leo**
```leo
// The fund NAV calculation circuit
// Calculates Net Asset Value without revealing positions

circuit FundNAV {
    // Private inputs - hidden from public view
    positions: [u64; 10],      // Asset quantities
    prices: [u64; 10],         // Current prices (scaled by 1000)
    
    // Public output - only this is revealed
    total_nav: u64,
    
    // Calculate NAV privately
    function calculate_nav(positions: [u64; 10], prices: [u64; 10]) -> u64 {
        let mut nav: u64 = 0u64;
        
        for i in 0..10 {
            nav += positions[i] * prices[i];
        }
        
        return nav / 1000u64; // Adjust for price scaling
    }
}

@program
function main(positions: [u64; 10], prices: [u64; 10]) -> u64 {
    let circuit = FundNAV {
        positions: positions,
        prices: prices,
        total_nav: 0u64,
    };
    
    return FundNAV::calculate_nav(positions, prices);
}
