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
-- Module      : Network.AWS.SMS.Types.ServerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ServerType
  ( ServerType
      ( ..,
        ServerTypeVIRTUALMACHINE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ServerType = ServerType'
  { fromServerType ::
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

pattern ServerTypeVIRTUALMACHINE :: ServerType
pattern ServerTypeVIRTUALMACHINE = ServerType' "VIRTUAL_MACHINE"

{-# COMPLETE
  ServerTypeVIRTUALMACHINE,
  ServerType'
  #-}

instance Prelude.FromText ServerType where
  parser = ServerType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ServerType where
  toText (ServerType' x) = x

instance Prelude.Hashable ServerType

instance Prelude.NFData ServerType

instance Prelude.ToByteString ServerType

instance Prelude.ToQuery ServerType

instance Prelude.ToHeader ServerType

instance Prelude.ToJSON ServerType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ServerType where
  parseJSON = Prelude.parseJSONText "ServerType"
