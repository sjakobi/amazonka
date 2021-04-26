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
-- Module      : Network.AWS.LexModels.Types.ChannelType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.ChannelType
  ( ChannelType
      ( ..,
        ChannelTypeFacebook,
        ChannelTypeKik,
        ChannelTypeSlack,
        ChannelTypeTwilioSms
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ChannelType = ChannelType'
  { fromChannelType ::
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

pattern ChannelTypeFacebook :: ChannelType
pattern ChannelTypeFacebook = ChannelType' "Facebook"

pattern ChannelTypeKik :: ChannelType
pattern ChannelTypeKik = ChannelType' "Kik"

pattern ChannelTypeSlack :: ChannelType
pattern ChannelTypeSlack = ChannelType' "Slack"

pattern ChannelTypeTwilioSms :: ChannelType
pattern ChannelTypeTwilioSms = ChannelType' "Twilio-Sms"

{-# COMPLETE
  ChannelTypeFacebook,
  ChannelTypeKik,
  ChannelTypeSlack,
  ChannelTypeTwilioSms,
  ChannelType'
  #-}

instance Prelude.FromText ChannelType where
  parser = ChannelType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ChannelType where
  toText (ChannelType' x) = x

instance Prelude.Hashable ChannelType

instance Prelude.NFData ChannelType

instance Prelude.ToByteString ChannelType

instance Prelude.ToQuery ChannelType

instance Prelude.ToHeader ChannelType

instance Prelude.FromJSON ChannelType where
  parseJSON = Prelude.parseJSONText "ChannelType"
