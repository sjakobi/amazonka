{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ContentClassifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ContentClassifier
  ( ContentClassifier
      ( ..,
        ContentClassifierFreeOfAdultContent,
        ContentClassifierFreeOfPersonallyIdentifiableInformation
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContentClassifier = ContentClassifier'
  { fromContentClassifier ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern ContentClassifierFreeOfAdultContent :: ContentClassifier
pattern ContentClassifierFreeOfAdultContent = ContentClassifier' "FreeOfAdultContent"

pattern ContentClassifierFreeOfPersonallyIdentifiableInformation :: ContentClassifier
pattern ContentClassifierFreeOfPersonallyIdentifiableInformation = ContentClassifier' "FreeOfPersonallyIdentifiableInformation"

{-# COMPLETE
  ContentClassifierFreeOfAdultContent,
  ContentClassifierFreeOfPersonallyIdentifiableInformation,
  ContentClassifier'
  #-}

instance Prelude.FromText ContentClassifier where
  parser = ContentClassifier' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContentClassifier where
  toText (ContentClassifier' x) = x

instance Prelude.Hashable ContentClassifier

instance Prelude.NFData ContentClassifier

instance Prelude.ToByteString ContentClassifier

instance Prelude.ToQuery ContentClassifier

instance Prelude.ToHeader ContentClassifier

instance Prelude.ToJSON ContentClassifier where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ContentClassifier where
  parseJSON = Prelude.parseJSONText "ContentClassifier"
