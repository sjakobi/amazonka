{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types.OriginType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KMS.Types.OriginType
  ( OriginType
      ( ..,
        AWSCloudhsm,
        AWSKMS,
        External
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data OriginType = OriginType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AWSCloudhsm :: OriginType
pattern AWSCloudhsm = OriginType' "AWS_CLOUDHSM"

pattern AWSKMS :: OriginType
pattern AWSKMS = OriginType' "AWS_KMS"

pattern External :: OriginType
pattern External = OriginType' "EXTERNAL"

{-# COMPLETE
  AWSCloudhsm,
  AWSKMS,
  External,
  OriginType'
  #-}

instance FromText OriginType where
  parser = (OriginType' . mk) <$> takeText

instance ToText OriginType where
  toText (OriginType' ci) = original ci

instance Hashable OriginType

instance NFData OriginType

instance ToByteString OriginType

instance ToQuery OriginType

instance ToHeader OriginType

instance ToJSON OriginType where
  toJSON = toJSONText

instance FromJSON OriginType where
  parseJSON = parseJSONText "OriginType"
