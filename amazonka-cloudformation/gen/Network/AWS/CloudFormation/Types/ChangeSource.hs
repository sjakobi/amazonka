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
-- Module      : Network.AWS.CloudFormation.Types.ChangeSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.ChangeSource
  ( ChangeSource
      ( ..,
        ChangeSourceAutomatic,
        ChangeSourceDirectModification,
        ChangeSourceParameterReference,
        ChangeSourceResourceAttribute,
        ChangeSourceResourceReference
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ChangeSource = ChangeSource'
  { fromChangeSource ::
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

pattern ChangeSourceAutomatic :: ChangeSource
pattern ChangeSourceAutomatic = ChangeSource' "Automatic"

pattern ChangeSourceDirectModification :: ChangeSource
pattern ChangeSourceDirectModification = ChangeSource' "DirectModification"

pattern ChangeSourceParameterReference :: ChangeSource
pattern ChangeSourceParameterReference = ChangeSource' "ParameterReference"

pattern ChangeSourceResourceAttribute :: ChangeSource
pattern ChangeSourceResourceAttribute = ChangeSource' "ResourceAttribute"

pattern ChangeSourceResourceReference :: ChangeSource
pattern ChangeSourceResourceReference = ChangeSource' "ResourceReference"

{-# COMPLETE
  ChangeSourceAutomatic,
  ChangeSourceDirectModification,
  ChangeSourceParameterReference,
  ChangeSourceResourceAttribute,
  ChangeSourceResourceReference,
  ChangeSource'
  #-}

instance Prelude.FromText ChangeSource where
  parser = ChangeSource' Prelude.<$> Prelude.takeText

instance Prelude.ToText ChangeSource where
  toText (ChangeSource' x) = x

instance Prelude.Hashable ChangeSource

instance Prelude.NFData ChangeSource

instance Prelude.ToByteString ChangeSource

instance Prelude.ToQuery ChangeSource

instance Prelude.ToHeader ChangeSource

instance Prelude.FromXML ChangeSource where
  parseXML = Prelude.parseXMLText "ChangeSource"
