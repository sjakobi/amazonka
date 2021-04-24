{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.ChangeSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.ChangeSource
  ( ChangeSource
      ( ..,
        Automatic,
        DirectModification,
        ParameterReference,
        ResourceAttribute,
        ResourceReference
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ChangeSource = ChangeSource' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Automatic :: ChangeSource
pattern Automatic = ChangeSource' "Automatic"

pattern DirectModification :: ChangeSource
pattern DirectModification = ChangeSource' "DirectModification"

pattern ParameterReference :: ChangeSource
pattern ParameterReference = ChangeSource' "ParameterReference"

pattern ResourceAttribute :: ChangeSource
pattern ResourceAttribute = ChangeSource' "ResourceAttribute"

pattern ResourceReference :: ChangeSource
pattern ResourceReference = ChangeSource' "ResourceReference"

{-# COMPLETE
  Automatic,
  DirectModification,
  ParameterReference,
  ResourceAttribute,
  ResourceReference,
  ChangeSource'
  #-}

instance FromText ChangeSource where
  parser = (ChangeSource' . mk) <$> takeText

instance ToText ChangeSource where
  toText (ChangeSource' ci) = original ci

instance Hashable ChangeSource

instance NFData ChangeSource

instance ToByteString ChangeSource

instance ToQuery ChangeSource

instance ToHeader ChangeSource

instance FromXML ChangeSource where
  parseXML = parseXMLText "ChangeSource"
