### Barrels (`index.ts`)

Barrels are used to simplify imports by re-exporting modules, components, directives, and pipes from a single entry point (usually `index.ts`).

## Guidelines

- ✅ **Inside a barrel:** always use **relative paths** (`./something`).
- ❌ **Do not** use path aliases (`@shared/...`) inside a barrel.  
  Using aliases here can cause the barrel to **re-import itself**, leading to circular dependencies and confusing the IDE or bundler.
- ✅ **Outside a barrel:** using path aliases is **recommended** for clean and consistent imports.

## Example: Inside a Barrel

```ts
// src/app/shared/components/index.ts
export * from "./custom-input/custom-input.component";
export * from "./email-link/email-link.component";
export * from "./form-child/form-child.component";
```

## Example: Consumption usage

```ts
// src/app/features/feature.module.ts
import {
  CustomInputComponent,
  EmailLinkComponent,
  FormChildComponent,
} from "@shared/components";
```

### Signals - OnChangeDetectionStrategy.OnPush

When using signals, inputs, or observables that provide array data, always copy the data into a local constant or property before rendering or looping over it.

```ts
this.documentTypesLocal = [...this.documentTypes()];
```

This breaks the reference to the reactive source, preventing unnecessary re-renders or repeated computations in templates.
Rule of thumb: use

```ts
const staticList = [...(service / input / signal)];
```

instead of directly binding to reactive sources inside the template.
