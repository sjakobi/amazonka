{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.VirtualizationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.VirtualizationType
  ( VirtualizationType
      ( ..,
        HVM,
        Paravirtual
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data VirtualizationType
  = VirtualizationType'
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

pattern HVM :: VirtualizationType
pattern HVM = VirtualizationType' "hvm"

pattern Paravirtual :: VirtualizationType
pattern Paravirtual = VirtualizationType' "paravirtual"

{-# COMPLETE
  HVM,
  Paravirtual,
  VirtualizationType'
  #-}

instance FromText VirtualizationType where
  parser = (VirtualizationType' . mk) <$> takeText

instance ToText VirtualizationType where
  toText (VirtualizationType' ci) = original ci

instance Hashable VirtualizationType

instance NFData VirtualizationType

instance ToByteString VirtualizationType

instance ToQuery VirtualizationType

instance ToHeader VirtualizationType

instance FromJSON VirtualizationType where
  parseJSON = parseJSONText "VirtualizationType"
