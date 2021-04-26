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
-- Module      : Network.AWS.APIGateway.Types.LocationStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.LocationStatusType
  ( LocationStatusType
      ( ..,
        LocationStatusTypeDOCUMENTED,
        LocationStatusTypeUNDOCUMENTED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LocationStatusType = LocationStatusType'
  { fromLocationStatusType ::
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

pattern LocationStatusTypeDOCUMENTED :: LocationStatusType
pattern LocationStatusTypeDOCUMENTED = LocationStatusType' "DOCUMENTED"

pattern LocationStatusTypeUNDOCUMENTED :: LocationStatusType
pattern LocationStatusTypeUNDOCUMENTED = LocationStatusType' "UNDOCUMENTED"

{-# COMPLETE
  LocationStatusTypeDOCUMENTED,
  LocationStatusTypeUNDOCUMENTED,
  LocationStatusType'
  #-}

instance Prelude.FromText LocationStatusType where
  parser = LocationStatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText LocationStatusType where
  toText (LocationStatusType' x) = x

instance Prelude.Hashable LocationStatusType

instance Prelude.NFData LocationStatusType

instance Prelude.ToByteString LocationStatusType

instance Prelude.ToQuery LocationStatusType

instance Prelude.ToHeader LocationStatusType

instance Prelude.ToJSON LocationStatusType where
  toJSON = Prelude.toJSONText
