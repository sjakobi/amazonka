{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.PolicyQualifierInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.PolicyQualifierInfo where

import Network.AWS.CertificateManagerPCA.Types.PolicyQualifierId
import Network.AWS.CertificateManagerPCA.Types.Qualifier
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Modifies the @CertPolicyId@ of a @PolicyInformation@ object with a qualifier. ACM Private CA supports the certification practice statement (CPS) qualifier.
--
--
--
-- /See:/ 'policyQualifierInfo' smart constructor.
data PolicyQualifierInfo = PolicyQualifierInfo'
  { _pqiPolicyQualifierId ::
      !PolicyQualifierId,
    _pqiQualifier :: !Qualifier
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PolicyQualifierInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pqiPolicyQualifierId' - Identifies the qualifier modifying a @CertPolicyId@ .
--
-- * 'pqiQualifier' - Defines the qualifier type. ACM Private CA supports the use of a URI for a CPS qualifier in this field.
policyQualifierInfo ::
  -- | 'pqiPolicyQualifierId'
  PolicyQualifierId ->
  -- | 'pqiQualifier'
  Qualifier ->
  PolicyQualifierInfo
policyQualifierInfo pPolicyQualifierId_ pQualifier_ =
  PolicyQualifierInfo'
    { _pqiPolicyQualifierId =
        pPolicyQualifierId_,
      _pqiQualifier = pQualifier_
    }

-- | Identifies the qualifier modifying a @CertPolicyId@ .
pqiPolicyQualifierId :: Lens' PolicyQualifierInfo PolicyQualifierId
pqiPolicyQualifierId = lens _pqiPolicyQualifierId (\s a -> s {_pqiPolicyQualifierId = a})

-- | Defines the qualifier type. ACM Private CA supports the use of a URI for a CPS qualifier in this field.
pqiQualifier :: Lens' PolicyQualifierInfo Qualifier
pqiQualifier = lens _pqiQualifier (\s a -> s {_pqiQualifier = a})

instance Hashable PolicyQualifierInfo

instance NFData PolicyQualifierInfo

instance ToJSON PolicyQualifierInfo where
  toJSON PolicyQualifierInfo' {..} =
    object
      ( catMaybes
          [ Just ("PolicyQualifierId" .= _pqiPolicyQualifierId),
            Just ("Qualifier" .= _pqiQualifier)
          ]
      )
