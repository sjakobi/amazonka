{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.AutomaticTapeCreationPolicyInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.AutomaticTapeCreationPolicyInfo where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.StorageGateway.Types.AutomaticTapeCreationRule

-- | Information about the gateway's automatic tape creation policies, including the automatic tape creation rules and the gateway that is using the policies.
--
--
--
-- /See:/ 'automaticTapeCreationPolicyInfo' smart constructor.
data AutomaticTapeCreationPolicyInfo = AutomaticTapeCreationPolicyInfo'
  { _atcpiAutomaticTapeCreationRules ::
      !( Maybe
           ( List1
               AutomaticTapeCreationRule
           )
       ),
    _atcpiGatewayARN ::
      !( Maybe
           Text
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AutomaticTapeCreationPolicyInfo' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atcpiAutomaticTapeCreationRules' - An automatic tape creation policy consists of a list of automatic tape creation rules. This returns the rules that determine when and how to automatically create new tapes.
--
-- * 'atcpiGatewayARN' - Undocumented member.
automaticTapeCreationPolicyInfo ::
  AutomaticTapeCreationPolicyInfo
automaticTapeCreationPolicyInfo =
  AutomaticTapeCreationPolicyInfo'
    { _atcpiAutomaticTapeCreationRules =
        Nothing,
      _atcpiGatewayARN = Nothing
    }

-- | An automatic tape creation policy consists of a list of automatic tape creation rules. This returns the rules that determine when and how to automatically create new tapes.
atcpiAutomaticTapeCreationRules :: Lens' AutomaticTapeCreationPolicyInfo (Maybe (NonEmpty AutomaticTapeCreationRule))
atcpiAutomaticTapeCreationRules = lens _atcpiAutomaticTapeCreationRules (\s a -> s {_atcpiAutomaticTapeCreationRules = a}) . mapping _List1

-- | Undocumented member.
atcpiGatewayARN :: Lens' AutomaticTapeCreationPolicyInfo (Maybe Text)
atcpiGatewayARN = lens _atcpiGatewayARN (\s a -> s {_atcpiGatewayARN = a})

instance FromJSON AutomaticTapeCreationPolicyInfo where
  parseJSON =
    withObject
      "AutomaticTapeCreationPolicyInfo"
      ( \x ->
          AutomaticTapeCreationPolicyInfo'
            <$> (x .:? "AutomaticTapeCreationRules")
            <*> (x .:? "GatewayARN")
      )

instance Hashable AutomaticTapeCreationPolicyInfo

instance NFData AutomaticTapeCreationPolicyInfo
