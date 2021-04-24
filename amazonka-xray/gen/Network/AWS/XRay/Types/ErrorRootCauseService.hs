{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.ErrorRootCauseService
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.ErrorRootCauseService where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.XRay.Types.ErrorRootCauseEntity

-- | A collection of fields identifying the services in a trace summary error.
--
--
--
-- /See:/ 'errorRootCauseService' smart constructor.
data ErrorRootCauseService = ErrorRootCauseService'
  { _ercsNames ::
      !(Maybe [Text]),
    _ercsAccountId ::
      !(Maybe Text),
    _ercsInferred ::
      !(Maybe Bool),
    _ercsName :: !(Maybe Text),
    _ercsEntityPath ::
      !( Maybe
           [ErrorRootCauseEntity]
       ),
    _ercsType :: !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ErrorRootCauseService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ercsNames' - A collection of associated service names.
--
-- * 'ercsAccountId' - The account ID associated to the service.
--
-- * 'ercsInferred' - A Boolean value indicating if the service is inferred from the trace.
--
-- * 'ercsName' - The service name.
--
-- * 'ercsEntityPath' - The path of root cause entities found on the service.
--
-- * 'ercsType' - The type associated to the service.
errorRootCauseService ::
  ErrorRootCauseService
errorRootCauseService =
  ErrorRootCauseService'
    { _ercsNames = Nothing,
      _ercsAccountId = Nothing,
      _ercsInferred = Nothing,
      _ercsName = Nothing,
      _ercsEntityPath = Nothing,
      _ercsType = Nothing
    }

-- | A collection of associated service names.
ercsNames :: Lens' ErrorRootCauseService [Text]
ercsNames = lens _ercsNames (\s a -> s {_ercsNames = a}) . _Default . _Coerce

-- | The account ID associated to the service.
ercsAccountId :: Lens' ErrorRootCauseService (Maybe Text)
ercsAccountId = lens _ercsAccountId (\s a -> s {_ercsAccountId = a})

-- | A Boolean value indicating if the service is inferred from the trace.
ercsInferred :: Lens' ErrorRootCauseService (Maybe Bool)
ercsInferred = lens _ercsInferred (\s a -> s {_ercsInferred = a})

-- | The service name.
ercsName :: Lens' ErrorRootCauseService (Maybe Text)
ercsName = lens _ercsName (\s a -> s {_ercsName = a})

-- | The path of root cause entities found on the service.
ercsEntityPath :: Lens' ErrorRootCauseService [ErrorRootCauseEntity]
ercsEntityPath = lens _ercsEntityPath (\s a -> s {_ercsEntityPath = a}) . _Default . _Coerce

-- | The type associated to the service.
ercsType :: Lens' ErrorRootCauseService (Maybe Text)
ercsType = lens _ercsType (\s a -> s {_ercsType = a})

instance FromJSON ErrorRootCauseService where
  parseJSON =
    withObject
      "ErrorRootCauseService"
      ( \x ->
          ErrorRootCauseService'
            <$> (x .:? "Names" .!= mempty)
            <*> (x .:? "AccountId")
            <*> (x .:? "Inferred")
            <*> (x .:? "Name")
            <*> (x .:? "EntityPath" .!= mempty)
            <*> (x .:? "Type")
      )

instance Hashable ErrorRootCauseService

instance NFData ErrorRootCauseService
