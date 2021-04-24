{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.Replacement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.Replacement
  ( Replacement
      ( ..,
        Conditional,
        False',
        True'
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data Replacement = Replacement' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Conditional :: Replacement
pattern Conditional = Replacement' "Conditional"

pattern False' :: Replacement
pattern False' = Replacement' "False"

pattern True' :: Replacement
pattern True' = Replacement' "True"

{-# COMPLETE
  Conditional,
  False',
  True',
  Replacement'
  #-}

instance FromText Replacement where
  parser = (Replacement' . mk) <$> takeText

instance ToText Replacement where
  toText (Replacement' ci) = original ci

instance Hashable Replacement

instance NFData Replacement

instance ToByteString Replacement

instance ToQuery Replacement

instance ToHeader Replacement

instance FromXML Replacement where
  parseXML = parseXMLText "Replacement"
