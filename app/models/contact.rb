class Contact < ApplicationRecord
  enum gender: {
    male: 1,
    female: 2,
    both: 3,
    neither: 4,
    apachi_helicopter: 5,
    rather_not_say: 6
  }
  
end