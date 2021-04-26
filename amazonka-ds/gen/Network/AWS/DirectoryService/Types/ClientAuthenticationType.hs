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
-- Module      : Network.AWS.DirectoryService.Types.ClientAuthenticationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.ClientAuthenticationType
  ( ClientAuthenticationType
      ( ..,
        ClientAuthenticationTypeSmartCard
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ClientAuthenticationType = ClientAuthenticationType'
  { fromClientAuthenticationType ::
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

pattern ClientAuthenticationTypeSmartCard :: ClientAuthenticationType
pattern ClientAuthenticationTypeSmartCard = ClientAuthenticationType' "SmartCard"

{-# COMPLETE
  ClientAuthenticationTypeSmartCard,
  ClientAuthenticationType'
  #-}

instance Prelude.FromText ClientAuthenticationType where
  parser = ClientAuthenticationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ClientAuthenticationType where
  toText (ClientAuthenticationType' x) = x

instance Prelude.Hashable ClientAuthenticationType

instance Prelude.NFData ClientAuthenticationType

instance Prelude.ToByteString ClientAuthenticationType

instance Prelude.ToQuery ClientAuthenticationType

instance Prelude.ToHeader ClientAuthenticationType

instance Prelude.ToJSON ClientAuthenticationType where
  toJSON = Prelude.toJSONText
