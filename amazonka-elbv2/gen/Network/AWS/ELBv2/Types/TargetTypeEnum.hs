{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types.TargetTypeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.TargetTypeEnum
  ( TargetTypeEnum
      ( ..,
        IP,
        Instance,
        Lambda
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TargetTypeEnum = TargetTypeEnum' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern IP :: TargetTypeEnum
pattern IP = TargetTypeEnum' "ip"

pattern Instance :: TargetTypeEnum
pattern Instance = TargetTypeEnum' "instance"

pattern Lambda :: TargetTypeEnum
pattern Lambda = TargetTypeEnum' "lambda"

{-# COMPLETE
  IP,
  Instance,
  Lambda,
  TargetTypeEnum'
  #-}

instance FromText TargetTypeEnum where
  parser = (TargetTypeEnum' . mk) <$> takeText

instance ToText TargetTypeEnum where
  toText (TargetTypeEnum' ci) = original ci

instance Hashable TargetTypeEnum

instance NFData TargetTypeEnum

instance ToByteString TargetTypeEnum

instance ToQuery TargetTypeEnum

instance ToHeader TargetTypeEnum

instance FromXML TargetTypeEnum where
  parseXML = parseXMLText "TargetTypeEnum"
