{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELB.Types.PolicyTypeDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELB.Types.PolicyTypeDescription where

import Network.AWS.ELB.Internal
import Network.AWS.ELB.Types.PolicyAttributeTypeDescription
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a policy type.
--
--
--
-- /See:/ 'policyTypeDescription' smart constructor.
data PolicyTypeDescription = PolicyTypeDescription'
  { _ptdPolicyAttributeTypeDescriptions ::
      !( Maybe
           [PolicyAttributeTypeDescription]
       ),
    _ptdPolicyTypeName ::
      !(Maybe Text),
    _ptdDescription ::
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

-- | Creates a value of 'PolicyTypeDescription' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptdPolicyAttributeTypeDescriptions' - The description of the policy attributes associated with the policies defined by Elastic Load Balancing.
--
-- * 'ptdPolicyTypeName' - The name of the policy type.
--
-- * 'ptdDescription' - A description of the policy type.
policyTypeDescription ::
  PolicyTypeDescription
policyTypeDescription =
  PolicyTypeDescription'
    { _ptdPolicyAttributeTypeDescriptions =
        Nothing,
      _ptdPolicyTypeName = Nothing,
      _ptdDescription = Nothing
    }

-- | The description of the policy attributes associated with the policies defined by Elastic Load Balancing.
ptdPolicyAttributeTypeDescriptions :: Lens' PolicyTypeDescription [PolicyAttributeTypeDescription]
ptdPolicyAttributeTypeDescriptions = lens _ptdPolicyAttributeTypeDescriptions (\s a -> s {_ptdPolicyAttributeTypeDescriptions = a}) . _Default . _Coerce

-- | The name of the policy type.
ptdPolicyTypeName :: Lens' PolicyTypeDescription (Maybe Text)
ptdPolicyTypeName = lens _ptdPolicyTypeName (\s a -> s {_ptdPolicyTypeName = a})

-- | A description of the policy type.
ptdDescription :: Lens' PolicyTypeDescription (Maybe Text)
ptdDescription = lens _ptdDescription (\s a -> s {_ptdDescription = a})

instance FromXML PolicyTypeDescription where
  parseXML x =
    PolicyTypeDescription'
      <$> ( x .@? "PolicyAttributeTypeDescriptions" .!@ mempty
              >>= may (parseXMLList "member")
          )
      <*> (x .@? "PolicyTypeName")
      <*> (x .@? "Description")

instance Hashable PolicyTypeDescription

instance NFData PolicyTypeDescription
