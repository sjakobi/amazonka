{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EMR.Types.AutoScalingPolicyStateChangeReasonCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.AutoScalingPolicyStateChangeReasonCode
  ( AutoScalingPolicyStateChangeReasonCode
      ( ..,
        AutoScalingPolicyStateChangeReasonCodeCLEANUPFAILURE,
        AutoScalingPolicyStateChangeReasonCodePROVISIONFAILURE,
        AutoScalingPolicyStateChangeReasonCodeUSERREQUEST
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AutoScalingPolicyStateChangeReasonCode = AutoScalingPolicyStateChangeReasonCode'
  { fromAutoScalingPolicyStateChangeReasonCode ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern AutoScalingPolicyStateChangeReasonCodeCLEANUPFAILURE :: AutoScalingPolicyStateChangeReasonCode
pattern AutoScalingPolicyStateChangeReasonCodeCLEANUPFAILURE = AutoScalingPolicyStateChangeReasonCode' "CLEANUP_FAILURE"

pattern AutoScalingPolicyStateChangeReasonCodePROVISIONFAILURE :: AutoScalingPolicyStateChangeReasonCode
pattern AutoScalingPolicyStateChangeReasonCodePROVISIONFAILURE = AutoScalingPolicyStateChangeReasonCode' "PROVISION_FAILURE"

pattern AutoScalingPolicyStateChangeReasonCodeUSERREQUEST :: AutoScalingPolicyStateChangeReasonCode
pattern AutoScalingPolicyStateChangeReasonCodeUSERREQUEST = AutoScalingPolicyStateChangeReasonCode' "USER_REQUEST"

{-# COMPLETE
  AutoScalingPolicyStateChangeReasonCodeCLEANUPFAILURE,
  AutoScalingPolicyStateChangeReasonCodePROVISIONFAILURE,
  AutoScalingPolicyStateChangeReasonCodeUSERREQUEST,
  AutoScalingPolicyStateChangeReasonCode'
  #-}

instance Prelude.FromText AutoScalingPolicyStateChangeReasonCode where
  parser = AutoScalingPolicyStateChangeReasonCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutoScalingPolicyStateChangeReasonCode where
  toText (AutoScalingPolicyStateChangeReasonCode' x) = x

instance Prelude.Hashable AutoScalingPolicyStateChangeReasonCode

instance Prelude.NFData AutoScalingPolicyStateChangeReasonCode

instance Prelude.ToByteString AutoScalingPolicyStateChangeReasonCode

instance Prelude.ToQuery AutoScalingPolicyStateChangeReasonCode

instance Prelude.ToHeader AutoScalingPolicyStateChangeReasonCode

instance Prelude.FromJSON AutoScalingPolicyStateChangeReasonCode where
  parseJSON = Prelude.parseJSONText "AutoScalingPolicyStateChangeReasonCode"
