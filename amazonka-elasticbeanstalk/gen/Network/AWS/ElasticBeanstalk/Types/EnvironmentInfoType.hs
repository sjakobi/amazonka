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
-- Module      : Network.AWS.ElasticBeanstalk.Types.EnvironmentInfoType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.EnvironmentInfoType
  ( EnvironmentInfoType
      ( ..,
        EnvironmentInfoTypeBundle,
        EnvironmentInfoTypeTail
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype EnvironmentInfoType = EnvironmentInfoType'
  { fromEnvironmentInfoType ::
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

pattern EnvironmentInfoTypeBundle :: EnvironmentInfoType
pattern EnvironmentInfoTypeBundle = EnvironmentInfoType' "bundle"

pattern EnvironmentInfoTypeTail :: EnvironmentInfoType
pattern EnvironmentInfoTypeTail = EnvironmentInfoType' "tail"

{-# COMPLETE
  EnvironmentInfoTypeBundle,
  EnvironmentInfoTypeTail,
  EnvironmentInfoType'
  #-}

instance Prelude.FromText EnvironmentInfoType where
  parser = EnvironmentInfoType' Prelude.<$> Prelude.takeText

instance Prelude.ToText EnvironmentInfoType where
  toText (EnvironmentInfoType' x) = x

instance Prelude.Hashable EnvironmentInfoType

instance Prelude.NFData EnvironmentInfoType

instance Prelude.ToByteString EnvironmentInfoType

instance Prelude.ToQuery EnvironmentInfoType

instance Prelude.ToHeader EnvironmentInfoType

instance Prelude.FromXML EnvironmentInfoType where
  parseXML = Prelude.parseXMLText "EnvironmentInfoType"
