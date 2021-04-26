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
-- Module      : Network.AWS.CloudFormation.Types.ChangeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.ChangeType
  ( ChangeType
      ( ..,
        ChangeTypeResource
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ChangeType = ChangeType'
  { fromChangeType ::
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

pattern ChangeTypeResource :: ChangeType
pattern ChangeTypeResource = ChangeType' "Resource"

{-# COMPLETE
  ChangeTypeResource,
  ChangeType'
  #-}

instance Prelude.FromText ChangeType where
  parser = ChangeType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ChangeType where
  toText (ChangeType' x) = x

instance Prelude.Hashable ChangeType

instance Prelude.NFData ChangeType

instance Prelude.ToByteString ChangeType

instance Prelude.ToQuery ChangeType

instance Prelude.ToHeader ChangeType

instance Prelude.FromXML ChangeType where
  parseXML = Prelude.parseXMLText "ChangeType"
