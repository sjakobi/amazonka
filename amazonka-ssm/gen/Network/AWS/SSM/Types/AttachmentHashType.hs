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
-- Module      : Network.AWS.SSM.Types.AttachmentHashType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AttachmentHashType
  ( AttachmentHashType
      ( ..,
        AttachmentHashTypeSHA256
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AttachmentHashType = AttachmentHashType'
  { fromAttachmentHashType ::
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

pattern AttachmentHashTypeSHA256 :: AttachmentHashType
pattern AttachmentHashTypeSHA256 = AttachmentHashType' "Sha256"

{-# COMPLETE
  AttachmentHashTypeSHA256,
  AttachmentHashType'
  #-}

instance Prelude.FromText AttachmentHashType where
  parser = AttachmentHashType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AttachmentHashType where
  toText (AttachmentHashType' x) = x

instance Prelude.Hashable AttachmentHashType

instance Prelude.NFData AttachmentHashType

instance Prelude.ToByteString AttachmentHashType

instance Prelude.ToQuery AttachmentHashType

instance Prelude.ToHeader AttachmentHashType

instance Prelude.FromJSON AttachmentHashType where
  parseJSON = Prelude.parseJSONText "AttachmentHashType"
