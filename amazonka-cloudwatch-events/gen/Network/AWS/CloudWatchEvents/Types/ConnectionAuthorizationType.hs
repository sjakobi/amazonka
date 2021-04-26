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
-- Module      : Network.AWS.CloudWatchEvents.Types.ConnectionAuthorizationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.ConnectionAuthorizationType
  ( ConnectionAuthorizationType
      ( ..,
        ConnectionAuthorizationTypeAPIKEY,
        ConnectionAuthorizationTypeBASIC,
        ConnectionAuthorizationTypeOAUTHCLIENTCREDENTIALS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConnectionAuthorizationType = ConnectionAuthorizationType'
  { fromConnectionAuthorizationType ::
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

pattern ConnectionAuthorizationTypeAPIKEY :: ConnectionAuthorizationType
pattern ConnectionAuthorizationTypeAPIKEY = ConnectionAuthorizationType' "API_KEY"

pattern ConnectionAuthorizationTypeBASIC :: ConnectionAuthorizationType
pattern ConnectionAuthorizationTypeBASIC = ConnectionAuthorizationType' "BASIC"

pattern ConnectionAuthorizationTypeOAUTHCLIENTCREDENTIALS :: ConnectionAuthorizationType
pattern ConnectionAuthorizationTypeOAUTHCLIENTCREDENTIALS = ConnectionAuthorizationType' "OAUTH_CLIENT_CREDENTIALS"

{-# COMPLETE
  ConnectionAuthorizationTypeAPIKEY,
  ConnectionAuthorizationTypeBASIC,
  ConnectionAuthorizationTypeOAUTHCLIENTCREDENTIALS,
  ConnectionAuthorizationType'
  #-}

instance Prelude.FromText ConnectionAuthorizationType where
  parser = ConnectionAuthorizationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConnectionAuthorizationType where
  toText (ConnectionAuthorizationType' x) = x

instance Prelude.Hashable ConnectionAuthorizationType

instance Prelude.NFData ConnectionAuthorizationType

instance Prelude.ToByteString ConnectionAuthorizationType

instance Prelude.ToQuery ConnectionAuthorizationType

instance Prelude.ToHeader ConnectionAuthorizationType

instance Prelude.ToJSON ConnectionAuthorizationType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ConnectionAuthorizationType where
  parseJSON = Prelude.parseJSONText "ConnectionAuthorizationType"
