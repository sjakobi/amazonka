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
-- Module      : Network.AWS.WorkDocs.Types.DocumentStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.DocumentStatusType
  ( DocumentStatusType
      ( ..,
        DocumentStatusTypeACTIVE,
        DocumentStatusTypeINITIALIZED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DocumentStatusType = DocumentStatusType'
  { fromDocumentStatusType ::
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

pattern DocumentStatusTypeACTIVE :: DocumentStatusType
pattern DocumentStatusTypeACTIVE = DocumentStatusType' "ACTIVE"

pattern DocumentStatusTypeINITIALIZED :: DocumentStatusType
pattern DocumentStatusTypeINITIALIZED = DocumentStatusType' "INITIALIZED"

{-# COMPLETE
  DocumentStatusTypeACTIVE,
  DocumentStatusTypeINITIALIZED,
  DocumentStatusType'
  #-}

instance Prelude.FromText DocumentStatusType where
  parser = DocumentStatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DocumentStatusType where
  toText (DocumentStatusType' x) = x

instance Prelude.Hashable DocumentStatusType

instance Prelude.NFData DocumentStatusType

instance Prelude.ToByteString DocumentStatusType

instance Prelude.ToQuery DocumentStatusType

instance Prelude.ToHeader DocumentStatusType

instance Prelude.FromJSON DocumentStatusType where
  parseJSON = Prelude.parseJSONText "DocumentStatusType"
