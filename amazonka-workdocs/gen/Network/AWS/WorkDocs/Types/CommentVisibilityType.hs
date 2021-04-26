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
-- Module      : Network.AWS.WorkDocs.Types.CommentVisibilityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.CommentVisibilityType
  ( CommentVisibilityType
      ( ..,
        CommentVisibilityTypePRIVATE,
        CommentVisibilityTypePUBLIC
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CommentVisibilityType = CommentVisibilityType'
  { fromCommentVisibilityType ::
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

pattern CommentVisibilityTypePRIVATE :: CommentVisibilityType
pattern CommentVisibilityTypePRIVATE = CommentVisibilityType' "PRIVATE"

pattern CommentVisibilityTypePUBLIC :: CommentVisibilityType
pattern CommentVisibilityTypePUBLIC = CommentVisibilityType' "PUBLIC"

{-# COMPLETE
  CommentVisibilityTypePRIVATE,
  CommentVisibilityTypePUBLIC,
  CommentVisibilityType'
  #-}

instance Prelude.FromText CommentVisibilityType where
  parser = CommentVisibilityType' Prelude.<$> Prelude.takeText

instance Prelude.ToText CommentVisibilityType where
  toText (CommentVisibilityType' x) = x

instance Prelude.Hashable CommentVisibilityType

instance Prelude.NFData CommentVisibilityType

instance Prelude.ToByteString CommentVisibilityType

instance Prelude.ToQuery CommentVisibilityType

instance Prelude.ToHeader CommentVisibilityType

instance Prelude.ToJSON CommentVisibilityType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CommentVisibilityType where
  parseJSON = Prelude.parseJSONText "CommentVisibilityType"
