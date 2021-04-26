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
-- Module      : Network.AWS.Redshift.Types.ParameterApplyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ParameterApplyType
  ( ParameterApplyType
      ( ..,
        ParameterApplyTypeDynamic,
        ParameterApplyTypeStatic
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Internal

newtype ParameterApplyType = ParameterApplyType'
  { fromParameterApplyType ::
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

pattern ParameterApplyTypeDynamic :: ParameterApplyType
pattern ParameterApplyTypeDynamic = ParameterApplyType' "dynamic"

pattern ParameterApplyTypeStatic :: ParameterApplyType
pattern ParameterApplyTypeStatic = ParameterApplyType' "static"

{-# COMPLETE
  ParameterApplyTypeDynamic,
  ParameterApplyTypeStatic,
  ParameterApplyType'
  #-}

instance Prelude.FromText ParameterApplyType where
  parser = ParameterApplyType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ParameterApplyType where
  toText (ParameterApplyType' x) = x

instance Prelude.Hashable ParameterApplyType

instance Prelude.NFData ParameterApplyType

instance Prelude.ToByteString ParameterApplyType

instance Prelude.ToQuery ParameterApplyType

instance Prelude.ToHeader ParameterApplyType

instance Prelude.FromXML ParameterApplyType where
  parseXML = Prelude.parseXMLText "ParameterApplyType"
