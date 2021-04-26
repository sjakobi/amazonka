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
-- Module      : Network.AWS.WorkDocs.Types.DocumentSourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.DocumentSourceType
  ( DocumentSourceType
      ( ..,
        DocumentSourceTypeORIGINAL,
        DocumentSourceTypeWITHCOMMENTS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DocumentSourceType = DocumentSourceType'
  { fromDocumentSourceType ::
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

pattern DocumentSourceTypeORIGINAL :: DocumentSourceType
pattern DocumentSourceTypeORIGINAL = DocumentSourceType' "ORIGINAL"

pattern DocumentSourceTypeWITHCOMMENTS :: DocumentSourceType
pattern DocumentSourceTypeWITHCOMMENTS = DocumentSourceType' "WITH_COMMENTS"

{-# COMPLETE
  DocumentSourceTypeORIGINAL,
  DocumentSourceTypeWITHCOMMENTS,
  DocumentSourceType'
  #-}

instance Prelude.FromText DocumentSourceType where
  parser = DocumentSourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DocumentSourceType where
  toText (DocumentSourceType' x) = x

instance Prelude.Hashable DocumentSourceType

instance Prelude.NFData DocumentSourceType

instance Prelude.ToByteString DocumentSourceType

instance Prelude.ToQuery DocumentSourceType

instance Prelude.ToHeader DocumentSourceType

instance Prelude.FromJSON DocumentSourceType where
  parseJSON = Prelude.parseJSONText "DocumentSourceType"
