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
-- Module      : Network.AWS.IAM.Types.PermissionsBoundaryAttachmentType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.PermissionsBoundaryAttachmentType
  ( PermissionsBoundaryAttachmentType
      ( ..,
        PermissionsBoundaryAttachmentTypePermissionsBoundaryPolicy
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PermissionsBoundaryAttachmentType = PermissionsBoundaryAttachmentType'
  { fromPermissionsBoundaryAttachmentType ::
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

pattern PermissionsBoundaryAttachmentTypePermissionsBoundaryPolicy :: PermissionsBoundaryAttachmentType
pattern PermissionsBoundaryAttachmentTypePermissionsBoundaryPolicy = PermissionsBoundaryAttachmentType' "PermissionsBoundaryPolicy"

{-# COMPLETE
  PermissionsBoundaryAttachmentTypePermissionsBoundaryPolicy,
  PermissionsBoundaryAttachmentType'
  #-}

instance Prelude.FromText PermissionsBoundaryAttachmentType where
  parser = PermissionsBoundaryAttachmentType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PermissionsBoundaryAttachmentType where
  toText (PermissionsBoundaryAttachmentType' x) = x

instance Prelude.Hashable PermissionsBoundaryAttachmentType

instance Prelude.NFData PermissionsBoundaryAttachmentType

instance Prelude.ToByteString PermissionsBoundaryAttachmentType

instance Prelude.ToQuery PermissionsBoundaryAttachmentType

instance Prelude.ToHeader PermissionsBoundaryAttachmentType

instance Prelude.FromXML PermissionsBoundaryAttachmentType where
  parseXML = Prelude.parseXMLText "PermissionsBoundaryAttachmentType"
