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
-- Module      : Network.AWS.APIGateway.Types.VpcLinkStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.VpcLinkStatus
  ( VpcLinkStatus
      ( ..,
        VpcLinkStatusAVAILABLE,
        VpcLinkStatusDELETING,
        VpcLinkStatusFAILED,
        VpcLinkStatusPENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype VpcLinkStatus = VpcLinkStatus'
  { fromVpcLinkStatus ::
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

pattern VpcLinkStatusAVAILABLE :: VpcLinkStatus
pattern VpcLinkStatusAVAILABLE = VpcLinkStatus' "AVAILABLE"

pattern VpcLinkStatusDELETING :: VpcLinkStatus
pattern VpcLinkStatusDELETING = VpcLinkStatus' "DELETING"

pattern VpcLinkStatusFAILED :: VpcLinkStatus
pattern VpcLinkStatusFAILED = VpcLinkStatus' "FAILED"

pattern VpcLinkStatusPENDING :: VpcLinkStatus
pattern VpcLinkStatusPENDING = VpcLinkStatus' "PENDING"

{-# COMPLETE
  VpcLinkStatusAVAILABLE,
  VpcLinkStatusDELETING,
  VpcLinkStatusFAILED,
  VpcLinkStatusPENDING,
  VpcLinkStatus'
  #-}

instance Prelude.FromText VpcLinkStatus where
  parser = VpcLinkStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText VpcLinkStatus where
  toText (VpcLinkStatus' x) = x

instance Prelude.Hashable VpcLinkStatus

instance Prelude.NFData VpcLinkStatus

instance Prelude.ToByteString VpcLinkStatus

instance Prelude.ToQuery VpcLinkStatus

instance Prelude.ToHeader VpcLinkStatus

instance Prelude.FromJSON VpcLinkStatus where
  parseJSON = Prelude.parseJSONText "VpcLinkStatus"
