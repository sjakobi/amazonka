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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.EventResponseType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.EventResponseType
  ( EventResponseType
      ( ..,
        EventResponseTypeFailure,
        EventResponseTypeSuccess
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EventResponseType = EventResponseType'
  { fromEventResponseType ::
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

pattern EventResponseTypeFailure :: EventResponseType
pattern EventResponseTypeFailure = EventResponseType' "Failure"

pattern EventResponseTypeSuccess :: EventResponseType
pattern EventResponseTypeSuccess = EventResponseType' "Success"

{-# COMPLETE
  EventResponseTypeFailure,
  EventResponseTypeSuccess,
  EventResponseType'
  #-}

instance Prelude.FromText EventResponseType where
  parser = EventResponseType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EventResponseType where
  toText (EventResponseType' x) = x

instance Prelude.Hashable EventResponseType

instance Prelude.NFData EventResponseType

instance Prelude.ToByteString EventResponseType

instance Prelude.ToQuery EventResponseType

instance Prelude.ToHeader EventResponseType

instance Prelude.FromJSON EventResponseType where
  parseJSON = Prelude.parseJSONText "EventResponseType"
