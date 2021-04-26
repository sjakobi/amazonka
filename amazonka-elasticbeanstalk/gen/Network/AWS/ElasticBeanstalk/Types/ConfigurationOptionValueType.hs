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
-- Module      : Network.AWS.ElasticBeanstalk.Types.ConfigurationOptionValueType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.ConfigurationOptionValueType
  ( ConfigurationOptionValueType
      ( ..,
        ConfigurationOptionValueTypeList,
        ConfigurationOptionValueTypeScalar
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConfigurationOptionValueType = ConfigurationOptionValueType'
  { fromConfigurationOptionValueType ::
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

pattern ConfigurationOptionValueTypeList :: ConfigurationOptionValueType
pattern ConfigurationOptionValueTypeList = ConfigurationOptionValueType' "List"

pattern ConfigurationOptionValueTypeScalar :: ConfigurationOptionValueType
pattern ConfigurationOptionValueTypeScalar = ConfigurationOptionValueType' "Scalar"

{-# COMPLETE
  ConfigurationOptionValueTypeList,
  ConfigurationOptionValueTypeScalar,
  ConfigurationOptionValueType'
  #-}

instance Prelude.FromText ConfigurationOptionValueType where
  parser = ConfigurationOptionValueType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConfigurationOptionValueType where
  toText (ConfigurationOptionValueType' x) = x

instance Prelude.Hashable ConfigurationOptionValueType

instance Prelude.NFData ConfigurationOptionValueType

instance Prelude.ToByteString ConfigurationOptionValueType

instance Prelude.ToQuery ConfigurationOptionValueType

instance Prelude.ToHeader ConfigurationOptionValueType

instance Prelude.FromXML ConfigurationOptionValueType where
  parseXML = Prelude.parseXMLText "ConfigurationOptionValueType"
