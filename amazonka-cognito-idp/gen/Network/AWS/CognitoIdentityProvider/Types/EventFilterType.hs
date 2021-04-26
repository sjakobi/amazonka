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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.EventFilterType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.EventFilterType
  ( EventFilterType
      ( ..,
        EventFilterTypePASSWORDCHANGE,
        EventFilterTypeSIGNIN,
        EventFilterTypeSIGNUP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EventFilterType = EventFilterType'
  { fromEventFilterType ::
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

pattern EventFilterTypePASSWORDCHANGE :: EventFilterType
pattern EventFilterTypePASSWORDCHANGE = EventFilterType' "PASSWORD_CHANGE"

pattern EventFilterTypeSIGNIN :: EventFilterType
pattern EventFilterTypeSIGNIN = EventFilterType' "SIGN_IN"

pattern EventFilterTypeSIGNUP :: EventFilterType
pattern EventFilterTypeSIGNUP = EventFilterType' "SIGN_UP"

{-# COMPLETE
  EventFilterTypePASSWORDCHANGE,
  EventFilterTypeSIGNIN,
  EventFilterTypeSIGNUP,
  EventFilterType'
  #-}

instance Prelude.FromText EventFilterType where
  parser = EventFilterType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EventFilterType where
  toText (EventFilterType' x) = x

instance Prelude.Hashable EventFilterType

instance Prelude.NFData EventFilterType

instance Prelude.ToByteString EventFilterType

instance Prelude.ToQuery EventFilterType

instance Prelude.ToHeader EventFilterType

instance Prelude.ToJSON EventFilterType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON EventFilterType where
  parseJSON = Prelude.parseJSONText "EventFilterType"
