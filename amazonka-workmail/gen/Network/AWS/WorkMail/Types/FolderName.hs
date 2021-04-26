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
-- Module      : Network.AWS.WorkMail.Types.FolderName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMail.Types.FolderName
  ( FolderName
      ( ..,
        FolderNameDELETEDITEMS,
        FolderNameDRAFTS,
        FolderNameINBOX,
        FolderNameJUNKEMAIL,
        FolderNameSENTITEMS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FolderName = FolderName'
  { fromFolderName ::
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

pattern FolderNameDELETEDITEMS :: FolderName
pattern FolderNameDELETEDITEMS = FolderName' "DELETED_ITEMS"

pattern FolderNameDRAFTS :: FolderName
pattern FolderNameDRAFTS = FolderName' "DRAFTS"

pattern FolderNameINBOX :: FolderName
pattern FolderNameINBOX = FolderName' "INBOX"

pattern FolderNameJUNKEMAIL :: FolderName
pattern FolderNameJUNKEMAIL = FolderName' "JUNK_EMAIL"

pattern FolderNameSENTITEMS :: FolderName
pattern FolderNameSENTITEMS = FolderName' "SENT_ITEMS"

{-# COMPLETE
  FolderNameDELETEDITEMS,
  FolderNameDRAFTS,
  FolderNameINBOX,
  FolderNameJUNKEMAIL,
  FolderNameSENTITEMS,
  FolderName'
  #-}

instance Prelude.FromText FolderName where
  parser = FolderName' Prelude.<$> Prelude.takeText

instance Prelude.ToText FolderName where
  toText (FolderName' x) = x

instance Prelude.Hashable FolderName

instance Prelude.NFData FolderName

instance Prelude.ToByteString FolderName

instance Prelude.ToQuery FolderName

instance Prelude.ToHeader FolderName

instance Prelude.ToJSON FolderName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FolderName where
  parseJSON = Prelude.parseJSONText "FolderName"
