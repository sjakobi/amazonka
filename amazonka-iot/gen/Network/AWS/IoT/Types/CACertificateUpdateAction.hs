{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.Types.CACertificateUpdateAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.CACertificateUpdateAction
  ( CACertificateUpdateAction
      ( ..,
        CACUADeactivate
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CACertificateUpdateAction
  = CACertificateUpdateAction'
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

pattern CACUADeactivate :: CACertificateUpdateAction
pattern CACUADeactivate = CACertificateUpdateAction' "DEACTIVATE"

{-# COMPLETE
  CACUADeactivate,
  CACertificateUpdateAction'
  #-}

instance FromText CACertificateUpdateAction where
  parser = (CACertificateUpdateAction' . mk) <$> takeText

instance ToText CACertificateUpdateAction where
  toText (CACertificateUpdateAction' ci) = original ci

instance Hashable CACertificateUpdateAction

instance NFData CACertificateUpdateAction

instance ToByteString CACertificateUpdateAction

instance ToQuery CACertificateUpdateAction

instance ToHeader CACertificateUpdateAction

instance ToJSON CACertificateUpdateAction where
  toJSON = toJSONText

instance FromJSON CACertificateUpdateAction where
  parseJSON = parseJSONText "CACertificateUpdateAction"
