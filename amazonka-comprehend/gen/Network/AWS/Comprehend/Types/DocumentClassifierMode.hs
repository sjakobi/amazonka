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
-- Module      : Network.AWS.Comprehend.Types.DocumentClassifierMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.DocumentClassifierMode
  ( DocumentClassifierMode
      ( ..,
        DocumentClassifierModeMULTICLASS,
        DocumentClassifierModeMULTILABEL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DocumentClassifierMode = DocumentClassifierMode'
  { fromDocumentClassifierMode ::
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

pattern DocumentClassifierModeMULTICLASS :: DocumentClassifierMode
pattern DocumentClassifierModeMULTICLASS = DocumentClassifierMode' "MULTI_CLASS"

pattern DocumentClassifierModeMULTILABEL :: DocumentClassifierMode
pattern DocumentClassifierModeMULTILABEL = DocumentClassifierMode' "MULTI_LABEL"

{-# COMPLETE
  DocumentClassifierModeMULTICLASS,
  DocumentClassifierModeMULTILABEL,
  DocumentClassifierMode'
  #-}

instance Prelude.FromText DocumentClassifierMode where
  parser = DocumentClassifierMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText DocumentClassifierMode where
  toText (DocumentClassifierMode' x) = x

instance Prelude.Hashable DocumentClassifierMode

instance Prelude.NFData DocumentClassifierMode

instance Prelude.ToByteString DocumentClassifierMode

instance Prelude.ToQuery DocumentClassifierMode

instance Prelude.ToHeader DocumentClassifierMode

instance Prelude.ToJSON DocumentClassifierMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DocumentClassifierMode where
  parseJSON = Prelude.parseJSONText "DocumentClassifierMode"
