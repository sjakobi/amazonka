{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53AutoNaming.Types.ServiceTypeOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53AutoNaming.Types.ServiceTypeOption
  ( ServiceTypeOption
      ( ..,
        STOHTTP
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ServiceTypeOption = ServiceTypeOption' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern STOHTTP :: ServiceTypeOption
pattern STOHTTP = ServiceTypeOption' "HTTP"

{-# COMPLETE
  STOHTTP,
  ServiceTypeOption'
  #-}

instance FromText ServiceTypeOption where
  parser = (ServiceTypeOption' . mk) <$> takeText

instance ToText ServiceTypeOption where
  toText (ServiceTypeOption' ci) = original ci

instance Hashable ServiceTypeOption

instance NFData ServiceTypeOption

instance ToByteString ServiceTypeOption

instance ToQuery ServiceTypeOption

instance ToHeader ServiceTypeOption

instance ToJSON ServiceTypeOption where
  toJSON = toJSONText
