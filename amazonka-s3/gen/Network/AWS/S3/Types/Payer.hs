{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.S3.Types.Payer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.Payer
  ( Payer
      ( ..,
        PBucketOwner,
        PRequester
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.S3.Internal

data Payer = Payer' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PBucketOwner :: Payer
pattern PBucketOwner = Payer' "BucketOwner"

pattern PRequester :: Payer
pattern PRequester = Payer' "Requester"

{-# COMPLETE
  PBucketOwner,
  PRequester,
  Payer'
  #-}

instance FromText Payer where
  parser = (Payer' . mk) <$> takeText

instance ToText Payer where
  toText (Payer' ci) = original ci

instance Hashable Payer

instance NFData Payer

instance ToByteString Payer

instance ToQuery Payer

instance ToHeader Payer

instance FromXML Payer where
  parseXML = parseXMLText "Payer"

instance ToXML Payer where
  toXML = toXMLText
