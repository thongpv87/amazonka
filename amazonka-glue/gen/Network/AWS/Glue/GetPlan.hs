{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.GetPlan
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets code to perform a specified mapping.
module Network.AWS.Glue.GetPlan
  ( -- * Creating a Request
    GetPlan (..),
    newGetPlan,

    -- * Request Lenses
    getPlan_additionalPlanOptionsMap,
    getPlan_sinks,
    getPlan_location,
    getPlan_language,
    getPlan_mapping,
    getPlan_source,

    -- * Destructuring the Response
    GetPlanResponse (..),
    newGetPlanResponse,

    -- * Response Lenses
    getPlanResponse_pythonScript,
    getPlanResponse_scalaCode,
    getPlanResponse_httpStatus,
  )
where

import Network.AWS.Glue.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetPlan' smart constructor.
data GetPlan = GetPlan'
  { -- | A map to hold additional optional key-value parameters.
    --
    -- Currently, these key-value pairs are supported:
    --
    -- -   @inferSchema@  —  Specifies whether to set @inferSchema@ to true or
    --     false for the default script generated by an AWS Glue job. For
    --     example, to set @inferSchema@ to true, pass the following key value
    --     pair:
    --
    --     @--additional-plan-options-map \'{\"inferSchema\":\"true\"}\'@
    additionalPlanOptionsMap :: Prelude.Maybe (Prelude.Map Prelude.Text Prelude.Text),
    -- | The target tables.
    sinks :: Prelude.Maybe [CatalogEntry],
    -- | The parameters for the mapping.
    location :: Prelude.Maybe Location,
    -- | The programming language of the code to perform the mapping.
    language :: Prelude.Maybe Language,
    -- | The list of mappings from a source table to target tables.
    mapping :: [MappingEntry],
    -- | The source table.
    source :: CatalogEntry
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetPlan' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'additionalPlanOptionsMap', 'getPlan_additionalPlanOptionsMap' - A map to hold additional optional key-value parameters.
--
-- Currently, these key-value pairs are supported:
--
-- -   @inferSchema@  —  Specifies whether to set @inferSchema@ to true or
--     false for the default script generated by an AWS Glue job. For
--     example, to set @inferSchema@ to true, pass the following key value
--     pair:
--
--     @--additional-plan-options-map \'{\"inferSchema\":\"true\"}\'@
--
-- 'sinks', 'getPlan_sinks' - The target tables.
--
-- 'location', 'getPlan_location' - The parameters for the mapping.
--
-- 'language', 'getPlan_language' - The programming language of the code to perform the mapping.
--
-- 'mapping', 'getPlan_mapping' - The list of mappings from a source table to target tables.
--
-- 'source', 'getPlan_source' - The source table.
newGetPlan ::
  -- | 'source'
  CatalogEntry ->
  GetPlan
newGetPlan pSource_ =
  GetPlan'
    { additionalPlanOptionsMap =
        Prelude.Nothing,
      sinks = Prelude.Nothing,
      location = Prelude.Nothing,
      language = Prelude.Nothing,
      mapping = Prelude.mempty,
      source = pSource_
    }

-- | A map to hold additional optional key-value parameters.
--
-- Currently, these key-value pairs are supported:
--
-- -   @inferSchema@  —  Specifies whether to set @inferSchema@ to true or
--     false for the default script generated by an AWS Glue job. For
--     example, to set @inferSchema@ to true, pass the following key value
--     pair:
--
--     @--additional-plan-options-map \'{\"inferSchema\":\"true\"}\'@
getPlan_additionalPlanOptionsMap :: Lens.Lens' GetPlan (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
getPlan_additionalPlanOptionsMap = Lens.lens (\GetPlan' {additionalPlanOptionsMap} -> additionalPlanOptionsMap) (\s@GetPlan' {} a -> s {additionalPlanOptionsMap = a} :: GetPlan) Prelude.. Lens.mapping Prelude._Map

-- | The target tables.
getPlan_sinks :: Lens.Lens' GetPlan (Prelude.Maybe [CatalogEntry])
getPlan_sinks = Lens.lens (\GetPlan' {sinks} -> sinks) (\s@GetPlan' {} a -> s {sinks = a} :: GetPlan) Prelude.. Lens.mapping Prelude._Coerce

-- | The parameters for the mapping.
getPlan_location :: Lens.Lens' GetPlan (Prelude.Maybe Location)
getPlan_location = Lens.lens (\GetPlan' {location} -> location) (\s@GetPlan' {} a -> s {location = a} :: GetPlan)

-- | The programming language of the code to perform the mapping.
getPlan_language :: Lens.Lens' GetPlan (Prelude.Maybe Language)
getPlan_language = Lens.lens (\GetPlan' {language} -> language) (\s@GetPlan' {} a -> s {language = a} :: GetPlan)

-- | The list of mappings from a source table to target tables.
getPlan_mapping :: Lens.Lens' GetPlan [MappingEntry]
getPlan_mapping = Lens.lens (\GetPlan' {mapping} -> mapping) (\s@GetPlan' {} a -> s {mapping = a} :: GetPlan) Prelude.. Prelude._Coerce

-- | The source table.
getPlan_source :: Lens.Lens' GetPlan CatalogEntry
getPlan_source = Lens.lens (\GetPlan' {source} -> source) (\s@GetPlan' {} a -> s {source = a} :: GetPlan)

instance Prelude.AWSRequest GetPlan where
  type Rs GetPlan = GetPlanResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetPlanResponse'
            Prelude.<$> (x Prelude..?> "PythonScript")
            Prelude.<*> (x Prelude..?> "ScalaCode")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetPlan

instance Prelude.NFData GetPlan

instance Prelude.ToHeaders GetPlan where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ("AWSGlue.GetPlan" :: Prelude.ByteString),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON GetPlan where
  toJSON GetPlan' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("AdditionalPlanOptionsMap" Prelude..=)
              Prelude.<$> additionalPlanOptionsMap,
            ("Sinks" Prelude..=) Prelude.<$> sinks,
            ("Location" Prelude..=) Prelude.<$> location,
            ("Language" Prelude..=) Prelude.<$> language,
            Prelude.Just ("Mapping" Prelude..= mapping),
            Prelude.Just ("Source" Prelude..= source)
          ]
      )

instance Prelude.ToPath GetPlan where
  toPath = Prelude.const "/"

instance Prelude.ToQuery GetPlan where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetPlanResponse' smart constructor.
data GetPlanResponse = GetPlanResponse'
  { -- | A Python script to perform the mapping.
    pythonScript :: Prelude.Maybe Prelude.Text,
    -- | The Scala code to perform the mapping.
    scalaCode :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetPlanResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pythonScript', 'getPlanResponse_pythonScript' - A Python script to perform the mapping.
--
-- 'scalaCode', 'getPlanResponse_scalaCode' - The Scala code to perform the mapping.
--
-- 'httpStatus', 'getPlanResponse_httpStatus' - The response's http status code.
newGetPlanResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetPlanResponse
newGetPlanResponse pHttpStatus_ =
  GetPlanResponse'
    { pythonScript = Prelude.Nothing,
      scalaCode = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A Python script to perform the mapping.
getPlanResponse_pythonScript :: Lens.Lens' GetPlanResponse (Prelude.Maybe Prelude.Text)
getPlanResponse_pythonScript = Lens.lens (\GetPlanResponse' {pythonScript} -> pythonScript) (\s@GetPlanResponse' {} a -> s {pythonScript = a} :: GetPlanResponse)

-- | The Scala code to perform the mapping.
getPlanResponse_scalaCode :: Lens.Lens' GetPlanResponse (Prelude.Maybe Prelude.Text)
getPlanResponse_scalaCode = Lens.lens (\GetPlanResponse' {scalaCode} -> scalaCode) (\s@GetPlanResponse' {} a -> s {scalaCode = a} :: GetPlanResponse)

-- | The response's http status code.
getPlanResponse_httpStatus :: Lens.Lens' GetPlanResponse Prelude.Int
getPlanResponse_httpStatus = Lens.lens (\GetPlanResponse' {httpStatus} -> httpStatus) (\s@GetPlanResponse' {} a -> s {httpStatus = a} :: GetPlanResponse)

instance Prelude.NFData GetPlanResponse
