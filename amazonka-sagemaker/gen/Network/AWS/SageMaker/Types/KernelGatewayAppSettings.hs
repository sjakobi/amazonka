{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.KernelGatewayAppSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.KernelGatewayAppSettings where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.CustomImage
import Network.AWS.SageMaker.Types.ResourceSpec

-- | The KernelGateway app settings.
--
--
--
-- /See:/ 'kernelGatewayAppSettings' smart constructor.
data KernelGatewayAppSettings = KernelGatewayAppSettings'
  { _kgasCustomImages ::
      !( Maybe
           [CustomImage]
       ),
    _kgasDefaultResourceSpec ::
      !(Maybe ResourceSpec)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'KernelGatewayAppSettings' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kgasCustomImages' - A list of custom SageMaker images that are configured to run as a KernelGateway app.
--
-- * 'kgasDefaultResourceSpec' - The default instance type and the Amazon Resource Name (ARN) of the default SageMaker image used by the KernelGateway app.
kernelGatewayAppSettings ::
  KernelGatewayAppSettings
kernelGatewayAppSettings =
  KernelGatewayAppSettings'
    { _kgasCustomImages =
        Nothing,
      _kgasDefaultResourceSpec = Nothing
    }

-- | A list of custom SageMaker images that are configured to run as a KernelGateway app.
kgasCustomImages :: Lens' KernelGatewayAppSettings [CustomImage]
kgasCustomImages = lens _kgasCustomImages (\s a -> s {_kgasCustomImages = a}) . _Default . _Coerce

-- | The default instance type and the Amazon Resource Name (ARN) of the default SageMaker image used by the KernelGateway app.
kgasDefaultResourceSpec :: Lens' KernelGatewayAppSettings (Maybe ResourceSpec)
kgasDefaultResourceSpec = lens _kgasDefaultResourceSpec (\s a -> s {_kgasDefaultResourceSpec = a})

instance FromJSON KernelGatewayAppSettings where
  parseJSON =
    withObject
      "KernelGatewayAppSettings"
      ( \x ->
          KernelGatewayAppSettings'
            <$> (x .:? "CustomImages" .!= mempty)
            <*> (x .:? "DefaultResourceSpec")
      )

instance Hashable KernelGatewayAppSettings

instance NFData KernelGatewayAppSettings

instance ToJSON KernelGatewayAppSettings where
  toJSON KernelGatewayAppSettings' {..} =
    object
      ( catMaybes
          [ ("CustomImages" .=) <$> _kgasCustomImages,
            ("DefaultResourceSpec" .=)
              <$> _kgasDefaultResourceSpec
          ]
      )
