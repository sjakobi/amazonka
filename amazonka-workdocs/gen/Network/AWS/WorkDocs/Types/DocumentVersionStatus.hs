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
-- Module      : Network.AWS.WorkDocs.Types.DocumentVersionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.DocumentVersionStatus
  ( DocumentVersionStatus
      ( ..,
        DocumentVersionStatusACTIVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DocumentVersionStatus = DocumentVersionStatus'
  { fromDocumentVersionStatus ::
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

pattern DocumentVersionStatusACTIVE :: DocumentVersionStatus
pattern DocumentVersionStatusACTIVE = DocumentVersionStatus' "ACTIVE"

{-# COMPLETE
  DocumentVersionStatusACTIVE,
  DocumentVersionStatus'
  #-}

instance Prelude.FromText DocumentVersionStatus where
  parser = DocumentVersionStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DocumentVersionStatus where
  toText (DocumentVersionStatus' x) = x

instance Prelude.Hashable DocumentVersionStatus

instance Prelude.NFData DocumentVersionStatus

instance Prelude.ToByteString DocumentVersionStatus

instance Prelude.ToQuery DocumentVersionStatus

instance Prelude.ToHeader DocumentVersionStatus

instance Prelude.ToJSON DocumentVersionStatus where
  toJSON = Prelude.toJSONText
