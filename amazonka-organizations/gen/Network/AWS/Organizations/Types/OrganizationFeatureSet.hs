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
-- Module      : Network.AWS.Organizations.Types.OrganizationFeatureSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Organizations.Types.OrganizationFeatureSet
  ( OrganizationFeatureSet
      ( ..,
        OrganizationFeatureSetALL,
        OrganizationFeatureSetCONSOLIDATEDBILLING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype OrganizationFeatureSet = OrganizationFeatureSet'
  { fromOrganizationFeatureSet ::
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

pattern OrganizationFeatureSetALL :: OrganizationFeatureSet
pattern OrganizationFeatureSetALL = OrganizationFeatureSet' "ALL"

pattern OrganizationFeatureSetCONSOLIDATEDBILLING :: OrganizationFeatureSet
pattern OrganizationFeatureSetCONSOLIDATEDBILLING = OrganizationFeatureSet' "CONSOLIDATED_BILLING"

{-# COMPLETE
  OrganizationFeatureSetALL,
  OrganizationFeatureSetCONSOLIDATEDBILLING,
  OrganizationFeatureSet'
  #-}

instance Prelude.FromText OrganizationFeatureSet where
  parser = OrganizationFeatureSet' Prelude.<$> Prelude.takeText

instance Prelude.ToText OrganizationFeatureSet where
  toText (OrganizationFeatureSet' x) = x

instance Prelude.Hashable OrganizationFeatureSet

instance Prelude.NFData OrganizationFeatureSet

instance Prelude.ToByteString OrganizationFeatureSet

instance Prelude.ToQuery OrganizationFeatureSet

instance Prelude.ToHeader OrganizationFeatureSet

instance Prelude.ToJSON OrganizationFeatureSet where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON OrganizationFeatureSet where
  parseJSON = Prelude.parseJSONText "OrganizationFeatureSet"
