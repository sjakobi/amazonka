{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.DeviceCertificateUpdateAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DeviceCertificateUpdateAction
  ( DeviceCertificateUpdateAction
      ( ..,
        Deactivate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DeviceCertificateUpdateAction
  = DeviceCertificateUpdateAction'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Deactivate :: DeviceCertificateUpdateAction
pattern Deactivate = DeviceCertificateUpdateAction' "DEACTIVATE"

{-# COMPLETE
  Deactivate,
  DeviceCertificateUpdateAction'
  #-}

instance FromText DeviceCertificateUpdateAction where
  parser = (DeviceCertificateUpdateAction' . mk) <$> takeText

instance ToText DeviceCertificateUpdateAction where
  toText (DeviceCertificateUpdateAction' ci) = original ci

instance Hashable DeviceCertificateUpdateAction

instance NFData DeviceCertificateUpdateAction

instance ToByteString DeviceCertificateUpdateAction

instance ToQuery DeviceCertificateUpdateAction

instance ToHeader DeviceCertificateUpdateAction

instance ToJSON DeviceCertificateUpdateAction where
  toJSON = toJSONText

instance FromJSON DeviceCertificateUpdateAction where
  parseJSON = parseJSONText "DeviceCertificateUpdateAction"
