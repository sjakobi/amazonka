{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.GetSlotType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a specific version of a slot type. In addition to specifying the slot type name, you must specify the slot type version.
--
--
-- This operation requires permissions for the @lex:GetSlotType@ action.
module Network.AWS.LexModels.GetSlotType
  ( -- * Creating a Request
    getSlotType,
    GetSlotType,

    -- * Request Lenses
    gstName,
    gstVersion,

    -- * Destructuring the Response
    getSlotTypeResponse,
    GetSlotTypeResponse,

    -- * Response Lenses
    gstrrsSlotTypeConfigurations,
    gstrrsCreatedDate,
    gstrrsEnumerationValues,
    gstrrsLastUpdatedDate,
    gstrrsValueSelectionStrategy,
    gstrrsVersion,
    gstrrsName,
    gstrrsParentSlotTypeSignature,
    gstrrsDescription,
    gstrrsChecksum,
    gstrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.LexModels.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getSlotType' smart constructor.
data GetSlotType = GetSlotType'
  { _gstName :: !Text,
    _gstVersion :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSlotType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gstName' - The name of the slot type. The name is case sensitive.
--
-- * 'gstVersion' - The version of the slot type.
getSlotType ::
  -- | 'gstName'
  Text ->
  -- | 'gstVersion'
  Text ->
  GetSlotType
getSlotType pName_ pVersion_ =
  GetSlotType'
    { _gstName = pName_,
      _gstVersion = pVersion_
    }

-- | The name of the slot type. The name is case sensitive.
gstName :: Lens' GetSlotType Text
gstName = lens _gstName (\s a -> s {_gstName = a})

-- | The version of the slot type.
gstVersion :: Lens' GetSlotType Text
gstVersion = lens _gstVersion (\s a -> s {_gstVersion = a})

instance AWSRequest GetSlotType where
  type Rs GetSlotType = GetSlotTypeResponse
  request = get lexModels
  response =
    receiveJSON
      ( \s h x ->
          GetSlotTypeResponse'
            <$> (x .?> "slotTypeConfigurations" .!@ mempty)
            <*> (x .?> "createdDate")
            <*> (x .?> "enumerationValues" .!@ mempty)
            <*> (x .?> "lastUpdatedDate")
            <*> (x .?> "valueSelectionStrategy")
            <*> (x .?> "version")
            <*> (x .?> "name")
            <*> (x .?> "parentSlotTypeSignature")
            <*> (x .?> "description")
            <*> (x .?> "checksum")
            <*> (pure (fromEnum s))
      )

instance Hashable GetSlotType

instance NFData GetSlotType

instance ToHeaders GetSlotType where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetSlotType where
  toPath GetSlotType' {..} =
    mconcat
      [ "/slottypes/",
        toBS _gstName,
        "/versions/",
        toBS _gstVersion
      ]

instance ToQuery GetSlotType where
  toQuery = const mempty

-- | /See:/ 'getSlotTypeResponse' smart constructor.
data GetSlotTypeResponse = GetSlotTypeResponse'
  { _gstrrsSlotTypeConfigurations ::
      !( Maybe
           [SlotTypeConfiguration]
       ),
    _gstrrsCreatedDate ::
      !(Maybe POSIX),
    _gstrrsEnumerationValues ::
      !(Maybe [EnumerationValue]),
    _gstrrsLastUpdatedDate ::
      !(Maybe POSIX),
    _gstrrsValueSelectionStrategy ::
      !( Maybe
           SlotValueSelectionStrategy
       ),
    _gstrrsVersion :: !(Maybe Text),
    _gstrrsName :: !(Maybe Text),
    _gstrrsParentSlotTypeSignature ::
      !(Maybe Text),
    _gstrrsDescription ::
      !(Maybe Text),
    _gstrrsChecksum ::
      !(Maybe Text),
    _gstrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetSlotTypeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gstrrsSlotTypeConfigurations' - Configuration information that extends the parent built-in slot type.
--
-- * 'gstrrsCreatedDate' - The date that the slot type was created.
--
-- * 'gstrrsEnumerationValues' - A list of @EnumerationValue@ objects that defines the values that the slot type can take.
--
-- * 'gstrrsLastUpdatedDate' - The date that the slot type was updated. When you create a resource, the creation date and last update date are the same.
--
-- * 'gstrrsValueSelectionStrategy' - The strategy that Amazon Lex uses to determine the value of the slot. For more information, see 'PutSlotType' .
--
-- * 'gstrrsVersion' - The version of the slot type.
--
-- * 'gstrrsName' - The name of the slot type.
--
-- * 'gstrrsParentSlotTypeSignature' - The built-in slot type used as a parent for the slot type.
--
-- * 'gstrrsDescription' - A description of the slot type.
--
-- * 'gstrrsChecksum' - Checksum of the @> LATEST@ version of the slot type.
--
-- * 'gstrrsResponseStatus' - -- | The response status code.
getSlotTypeResponse ::
  -- | 'gstrrsResponseStatus'
  Int ->
  GetSlotTypeResponse
getSlotTypeResponse pResponseStatus_ =
  GetSlotTypeResponse'
    { _gstrrsSlotTypeConfigurations =
        Nothing,
      _gstrrsCreatedDate = Nothing,
      _gstrrsEnumerationValues = Nothing,
      _gstrrsLastUpdatedDate = Nothing,
      _gstrrsValueSelectionStrategy = Nothing,
      _gstrrsVersion = Nothing,
      _gstrrsName = Nothing,
      _gstrrsParentSlotTypeSignature = Nothing,
      _gstrrsDescription = Nothing,
      _gstrrsChecksum = Nothing,
      _gstrrsResponseStatus = pResponseStatus_
    }

-- | Configuration information that extends the parent built-in slot type.
gstrrsSlotTypeConfigurations :: Lens' GetSlotTypeResponse [SlotTypeConfiguration]
gstrrsSlotTypeConfigurations = lens _gstrrsSlotTypeConfigurations (\s a -> s {_gstrrsSlotTypeConfigurations = a}) . _Default . _Coerce

-- | The date that the slot type was created.
gstrrsCreatedDate :: Lens' GetSlotTypeResponse (Maybe UTCTime)
gstrrsCreatedDate = lens _gstrrsCreatedDate (\s a -> s {_gstrrsCreatedDate = a}) . mapping _Time

-- | A list of @EnumerationValue@ objects that defines the values that the slot type can take.
gstrrsEnumerationValues :: Lens' GetSlotTypeResponse [EnumerationValue]
gstrrsEnumerationValues = lens _gstrrsEnumerationValues (\s a -> s {_gstrrsEnumerationValues = a}) . _Default . _Coerce

-- | The date that the slot type was updated. When you create a resource, the creation date and last update date are the same.
gstrrsLastUpdatedDate :: Lens' GetSlotTypeResponse (Maybe UTCTime)
gstrrsLastUpdatedDate = lens _gstrrsLastUpdatedDate (\s a -> s {_gstrrsLastUpdatedDate = a}) . mapping _Time

-- | The strategy that Amazon Lex uses to determine the value of the slot. For more information, see 'PutSlotType' .
gstrrsValueSelectionStrategy :: Lens' GetSlotTypeResponse (Maybe SlotValueSelectionStrategy)
gstrrsValueSelectionStrategy = lens _gstrrsValueSelectionStrategy (\s a -> s {_gstrrsValueSelectionStrategy = a})

-- | The version of the slot type.
gstrrsVersion :: Lens' GetSlotTypeResponse (Maybe Text)
gstrrsVersion = lens _gstrrsVersion (\s a -> s {_gstrrsVersion = a})

-- | The name of the slot type.
gstrrsName :: Lens' GetSlotTypeResponse (Maybe Text)
gstrrsName = lens _gstrrsName (\s a -> s {_gstrrsName = a})

-- | The built-in slot type used as a parent for the slot type.
gstrrsParentSlotTypeSignature :: Lens' GetSlotTypeResponse (Maybe Text)
gstrrsParentSlotTypeSignature = lens _gstrrsParentSlotTypeSignature (\s a -> s {_gstrrsParentSlotTypeSignature = a})

-- | A description of the slot type.
gstrrsDescription :: Lens' GetSlotTypeResponse (Maybe Text)
gstrrsDescription = lens _gstrrsDescription (\s a -> s {_gstrrsDescription = a})

-- | Checksum of the @> LATEST@ version of the slot type.
gstrrsChecksum :: Lens' GetSlotTypeResponse (Maybe Text)
gstrrsChecksum = lens _gstrrsChecksum (\s a -> s {_gstrrsChecksum = a})

-- | -- | The response status code.
gstrrsResponseStatus :: Lens' GetSlotTypeResponse Int
gstrrsResponseStatus = lens _gstrrsResponseStatus (\s a -> s {_gstrrsResponseStatus = a})

instance NFData GetSlotTypeResponse
