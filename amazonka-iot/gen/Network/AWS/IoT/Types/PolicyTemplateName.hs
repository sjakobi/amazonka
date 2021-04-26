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
-- Module      : Network.AWS.IoT.Types.PolicyTemplateName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.PolicyTemplateName
  ( PolicyTemplateName
      ( ..,
        PolicyTemplateNameBLANKPOLICY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PolicyTemplateName = PolicyTemplateName'
  { fromPolicyTemplateName ::
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

pattern PolicyTemplateNameBLANKPOLICY :: PolicyTemplateName
pattern PolicyTemplateNameBLANKPOLICY = PolicyTemplateName' "BLANK_POLICY"

{-# COMPLETE
  PolicyTemplateNameBLANKPOLICY,
  PolicyTemplateName'
  #-}

instance Prelude.FromText PolicyTemplateName where
  parser = PolicyTemplateName' Prelude.<$> Prelude.takeText

instance Prelude.ToText PolicyTemplateName where
  toText (PolicyTemplateName' x) = x

instance Prelude.Hashable PolicyTemplateName

instance Prelude.NFData PolicyTemplateName

instance Prelude.ToByteString PolicyTemplateName

instance Prelude.ToQuery PolicyTemplateName

instance Prelude.ToHeader PolicyTemplateName

instance Prelude.ToJSON PolicyTemplateName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PolicyTemplateName where
  parseJSON = Prelude.parseJSONText "PolicyTemplateName"
