{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types.PolicyInformation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.PolicyInformation where

import Network.AWS.CertificateManagerPCA.Types.PolicyQualifierInfo
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Defines the X.509 @CertificatePolicies@ extension.
--
--
--
-- /See:/ 'policyInformation' smart constructor.
data PolicyInformation = PolicyInformation'
  { _piPolicyQualifiers ::
      !( Maybe
           (List1 PolicyQualifierInfo)
       ),
    _piCertPolicyId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PolicyInformation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piPolicyQualifiers' - Modifies the given @CertPolicyId@ with a qualifier. ACM Private CA supports the certification practice statement (CPS) qualifier.
--
-- * 'piCertPolicyId' - Specifies the object identifier (OID) of the certificate policy under which the certificate was issued. For more information, see NIST's definition of <https://csrc.nist.gov/glossary/term/Object_Identifier Object Identifier (OID)> .
policyInformation ::
  -- | 'piCertPolicyId'
  Text ->
  PolicyInformation
policyInformation pCertPolicyId_ =
  PolicyInformation'
    { _piPolicyQualifiers = Nothing,
      _piCertPolicyId = pCertPolicyId_
    }

-- | Modifies the given @CertPolicyId@ with a qualifier. ACM Private CA supports the certification practice statement (CPS) qualifier.
piPolicyQualifiers :: Lens' PolicyInformation (Maybe (NonEmpty PolicyQualifierInfo))
piPolicyQualifiers = lens _piPolicyQualifiers (\s a -> s {_piPolicyQualifiers = a}) . mapping _List1

-- | Specifies the object identifier (OID) of the certificate policy under which the certificate was issued. For more information, see NIST's definition of <https://csrc.nist.gov/glossary/term/Object_Identifier Object Identifier (OID)> .
piCertPolicyId :: Lens' PolicyInformation Text
piCertPolicyId = lens _piCertPolicyId (\s a -> s {_piCertPolicyId = a})

instance Hashable PolicyInformation

instance NFData PolicyInformation

instance ToJSON PolicyInformation where
  toJSON PolicyInformation' {..} =
    object
      ( catMaybes
          [ ("PolicyQualifiers" .=) <$> _piPolicyQualifiers,
            Just ("CertPolicyId" .= _piCertPolicyId)
          ]
      )
