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
-- Module      : Network.AWS.S3.Types.Protocol
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.Protocol
  ( Protocol
      ( ..,
        ProtocolHttp,
        ProtocolHttps
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

newtype Protocol = Protocol'
  { fromProtocol ::
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

pattern ProtocolHttp :: Protocol
pattern ProtocolHttp = Protocol' "http"

pattern ProtocolHttps :: Protocol
pattern ProtocolHttps = Protocol' "https"

{-# COMPLETE
  ProtocolHttp,
  ProtocolHttps,
  Protocol'
  #-}

instance Prelude.FromText Protocol where
  parser = Protocol' Prelude.<$> Prelude.takeText

instance Prelude.ToText Protocol where
  toText (Protocol' x) = x

instance Prelude.Hashable Protocol

instance Prelude.NFData Protocol

instance Prelude.ToByteString Protocol

instance Prelude.ToQuery Protocol

instance Prelude.ToHeader Protocol

instance Prelude.FromXML Protocol where
  parseXML = Prelude.parseXMLText "Protocol"

instance Prelude.ToXML Protocol where
  toXML = Prelude.toXMLText
