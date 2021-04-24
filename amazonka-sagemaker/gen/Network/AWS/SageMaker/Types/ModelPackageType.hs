{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ModelPackageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelPackageType
  ( ModelPackageType
      ( ..,
        Both,
        Unversioned,
        Versioned
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ModelPackageType = ModelPackageType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Both :: ModelPackageType
pattern Both = ModelPackageType' "Both"

pattern Unversioned :: ModelPackageType
pattern Unversioned = ModelPackageType' "Unversioned"

pattern Versioned :: ModelPackageType
pattern Versioned = ModelPackageType' "Versioned"

{-# COMPLETE
  Both,
  Unversioned,
  Versioned,
  ModelPackageType'
  #-}

instance FromText ModelPackageType where
  parser = (ModelPackageType' . mk) <$> takeText

instance ToText ModelPackageType where
  toText (ModelPackageType' ci) = original ci

instance Hashable ModelPackageType

instance NFData ModelPackageType

instance ToByteString ModelPackageType

instance ToQuery ModelPackageType

instance ToHeader ModelPackageType

instance ToJSON ModelPackageType where
  toJSON = toJSONText
