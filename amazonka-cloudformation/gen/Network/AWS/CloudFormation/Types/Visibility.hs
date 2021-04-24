{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.Visibility
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.Visibility
  ( Visibility
      ( ..,
        Private,
        Public
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Visibility = Visibility' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Private :: Visibility
pattern Private = Visibility' "PRIVATE"

pattern Public :: Visibility
pattern Public = Visibility' "PUBLIC"

{-# COMPLETE
  Private,
  Public,
  Visibility'
  #-}

instance FromText Visibility where
  parser = (Visibility' . mk) <$> takeText

instance ToText Visibility where
  toText (Visibility' ci) = original ci

instance Hashable Visibility

instance NFData Visibility

instance ToByteString Visibility

instance ToQuery Visibility

instance ToHeader Visibility

instance FromXML Visibility where
  parseXML = parseXMLText "Visibility"
