{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lambda.Types.ImageConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.ImageConfig where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Configuration values that override the container image Dockerfile settings. See <https://docs.aws.amazon.com/lambda/latest/dg/images-create.html#images-parms Container settings> .
--
--
--
-- /See:/ 'imageConfig' smart constructor.
data ImageConfig = ImageConfig'
  { _icWorkingDirectory ::
      !(Maybe Text),
    _icEntryPoint :: !(Maybe [Text]),
    _icCommand :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ImageConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'icWorkingDirectory' - Specifies the working directory.
--
-- * 'icEntryPoint' - Specifies the entry point to their application, which is typically the location of the runtime executable.
--
-- * 'icCommand' - Specifies parameters that you want to pass in with ENTRYPOINT.
imageConfig ::
  ImageConfig
imageConfig =
  ImageConfig'
    { _icWorkingDirectory = Nothing,
      _icEntryPoint = Nothing,
      _icCommand = Nothing
    }

-- | Specifies the working directory.
icWorkingDirectory :: Lens' ImageConfig (Maybe Text)
icWorkingDirectory = lens _icWorkingDirectory (\s a -> s {_icWorkingDirectory = a})

-- | Specifies the entry point to their application, which is typically the location of the runtime executable.
icEntryPoint :: Lens' ImageConfig [Text]
icEntryPoint = lens _icEntryPoint (\s a -> s {_icEntryPoint = a}) . _Default . _Coerce

-- | Specifies parameters that you want to pass in with ENTRYPOINT.
icCommand :: Lens' ImageConfig [Text]
icCommand = lens _icCommand (\s a -> s {_icCommand = a}) . _Default . _Coerce

instance FromJSON ImageConfig where
  parseJSON =
    withObject
      "ImageConfig"
      ( \x ->
          ImageConfig'
            <$> (x .:? "WorkingDirectory")
            <*> (x .:? "EntryPoint" .!= mempty)
            <*> (x .:? "Command" .!= mempty)
      )

instance Hashable ImageConfig

instance NFData ImageConfig

instance ToJSON ImageConfig where
  toJSON ImageConfig' {..} =
    object
      ( catMaybes
          [ ("WorkingDirectory" .=) <$> _icWorkingDirectory,
            ("EntryPoint" .=) <$> _icEntryPoint,
            ("Command" .=) <$> _icCommand
          ]
      )
