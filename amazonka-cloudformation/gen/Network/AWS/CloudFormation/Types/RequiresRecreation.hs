{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFormation.Types.RequiresRecreation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.RequiresRecreation
  ( RequiresRecreation
      ( ..,
        Always,
        Conditionally,
        Never
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RequiresRecreation
  = RequiresRecreation'
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

pattern Always :: RequiresRecreation
pattern Always = RequiresRecreation' "Always"

pattern Conditionally :: RequiresRecreation
pattern Conditionally = RequiresRecreation' "Conditionally"

pattern Never :: RequiresRecreation
pattern Never = RequiresRecreation' "Never"

{-# COMPLETE
  Always,
  Conditionally,
  Never,
  RequiresRecreation'
  #-}

instance FromText RequiresRecreation where
  parser = (RequiresRecreation' . mk) <$> takeText

instance ToText RequiresRecreation where
  toText (RequiresRecreation' ci) = original ci

instance Hashable RequiresRecreation

instance NFData RequiresRecreation

instance ToByteString RequiresRecreation

instance ToQuery RequiresRecreation

instance ToHeader RequiresRecreation

instance FromXML RequiresRecreation where
  parseXML = parseXMLText "RequiresRecreation"
