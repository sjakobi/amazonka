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
-- Module      : Network.AWS.WorkDocs.Types.ShareStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.ShareStatusType
  ( ShareStatusType
      ( ..,
        ShareStatusTypeFAILURE,
        ShareStatusTypeSUCCESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ShareStatusType = ShareStatusType'
  { fromShareStatusType ::
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

pattern ShareStatusTypeFAILURE :: ShareStatusType
pattern ShareStatusTypeFAILURE = ShareStatusType' "FAILURE"

pattern ShareStatusTypeSUCCESS :: ShareStatusType
pattern ShareStatusTypeSUCCESS = ShareStatusType' "SUCCESS"

{-# COMPLETE
  ShareStatusTypeFAILURE,
  ShareStatusTypeSUCCESS,
  ShareStatusType'
  #-}

instance Prelude.FromText ShareStatusType where
  parser = ShareStatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ShareStatusType where
  toText (ShareStatusType' x) = x

instance Prelude.Hashable ShareStatusType

instance Prelude.NFData ShareStatusType

instance Prelude.ToByteString ShareStatusType

instance Prelude.ToQuery ShareStatusType

instance Prelude.ToHeader ShareStatusType

instance Prelude.FromJSON ShareStatusType where
  parseJSON = Prelude.parseJSONText "ShareStatusType"
