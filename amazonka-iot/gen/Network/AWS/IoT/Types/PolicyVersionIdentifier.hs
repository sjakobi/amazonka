{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.PolicyVersionIdentifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.PolicyVersionIdentifier where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the version of the policy associated with the resource.
--
--
--
-- /See:/ 'policyVersionIdentifier' smart constructor.
data PolicyVersionIdentifier = PolicyVersionIdentifier'
  { _pviPolicyVersionId ::
      !(Maybe Text),
    _pviPolicyName ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'PolicyVersionIdentifier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pviPolicyVersionId' - The ID of the version of the policy associated with the resource.
--
-- * 'pviPolicyName' - The name of the policy.
policyVersionIdentifier ::
  PolicyVersionIdentifier
policyVersionIdentifier =
  PolicyVersionIdentifier'
    { _pviPolicyVersionId =
        Nothing,
      _pviPolicyName = Nothing
    }

-- | The ID of the version of the policy associated with the resource.
pviPolicyVersionId :: Lens' PolicyVersionIdentifier (Maybe Text)
pviPolicyVersionId = lens _pviPolicyVersionId (\s a -> s {_pviPolicyVersionId = a})

-- | The name of the policy.
pviPolicyName :: Lens' PolicyVersionIdentifier (Maybe Text)
pviPolicyName = lens _pviPolicyName (\s a -> s {_pviPolicyName = a})

instance FromJSON PolicyVersionIdentifier where
  parseJSON =
    withObject
      "PolicyVersionIdentifier"
      ( \x ->
          PolicyVersionIdentifier'
            <$> (x .:? "policyVersionId") <*> (x .:? "policyName")
      )

instance Hashable PolicyVersionIdentifier

instance NFData PolicyVersionIdentifier

instance ToJSON PolicyVersionIdentifier where
  toJSON PolicyVersionIdentifier' {..} =
    object
      ( catMaybes
          [ ("policyVersionId" .=) <$> _pviPolicyVersionId,
            ("policyName" .=) <$> _pviPolicyName
          ]
      )
