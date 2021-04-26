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
-- Module      : Network.AWS.APIGateway.Types.IntegrationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.IntegrationType
  ( IntegrationType
      ( ..,
        IntegrationTypeAWS,
        IntegrationTypeAWSPROXY,
        IntegrationTypeHTTP,
        IntegrationTypeHTTPPROXY,
        IntegrationTypeMOCK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The integration type. The valid value is @HTTP@ for integrating an API
-- method with an HTTP backend; @AWS@ with any AWS service endpoints;
-- @MOCK@ for testing without actually invoking the backend; @HTTP_PROXY@
-- for integrating with the HTTP proxy integration; @AWS_PROXY@ for
-- integrating with the Lambda proxy integration.
newtype IntegrationType = IntegrationType'
  { fromIntegrationType ::
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

pattern IntegrationTypeAWS :: IntegrationType
pattern IntegrationTypeAWS = IntegrationType' "AWS"

pattern IntegrationTypeAWSPROXY :: IntegrationType
pattern IntegrationTypeAWSPROXY = IntegrationType' "AWS_PROXY"

pattern IntegrationTypeHTTP :: IntegrationType
pattern IntegrationTypeHTTP = IntegrationType' "HTTP"

pattern IntegrationTypeHTTPPROXY :: IntegrationType
pattern IntegrationTypeHTTPPROXY = IntegrationType' "HTTP_PROXY"

pattern IntegrationTypeMOCK :: IntegrationType
pattern IntegrationTypeMOCK = IntegrationType' "MOCK"

{-# COMPLETE
  IntegrationTypeAWS,
  IntegrationTypeAWSPROXY,
  IntegrationTypeHTTP,
  IntegrationTypeHTTPPROXY,
  IntegrationTypeMOCK,
  IntegrationType'
  #-}

instance Prelude.FromText IntegrationType where
  parser = IntegrationType' Prelude.<$> Prelude.takeText

instance Prelude.ToText IntegrationType where
  toText (IntegrationType' x) = x

instance Prelude.Hashable IntegrationType

instance Prelude.NFData IntegrationType

instance Prelude.ToByteString IntegrationType

instance Prelude.ToQuery IntegrationType

instance Prelude.ToHeader IntegrationType

instance Prelude.ToJSON IntegrationType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON IntegrationType where
  parseJSON = Prelude.parseJSONText "IntegrationType"
